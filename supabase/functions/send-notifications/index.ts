import express from 'npm:express@4.18.2'
import { connect } from "npm:amqplib@0.10.3"
import { createClient } from 'npm:@supabase/supabase-js@2.39.3'
import { Buffer } from "https://deno.land/std@0.177.0/node/buffer.ts"

interface NotificationMessage {
  email: string;
  title: string;
  body: string;
}

enum NotificationType {
  Emergency = 'Emergency',
  Normal = 'Normal',
}

interface User {
  email: string;
  user_id: string;
  additional_info: { [key: string]: string };
}

interface RequestBody {
  notification_type?: NotificationType;
  title: string;
  body: string;
  users: User[];
}

interface UserProfile {
  user_id: string;
  auth_users?: {
    email: string;
  };
}

// Add this function to convert string to Uint8Array
function stringToUint8Array(str: string): Uint8Array {
  return new TextEncoder().encode(str);
}

// Add helper function to replace placeholders
function replacePlaceholders(text: string, additional_info: { [key: string]: string }): string {
  return text.replace(/{(\w+)}/g, (match, key) => additional_info[key] || match);
}

const app = express()
app.use(express.json())
const port = 3000

// Initialize Supabase client
const supabaseUrl = Deno.env.get('SUPABASE_URL')!;
const supabaseKey = Deno.env.get('SUPABASE_SERVICE_ROLE_KEY')!;
const supabase = createClient(supabaseUrl, supabaseKey, {
  'global': {
    'headers': {
      'Authorization': `Bearer ${Deno.env.get('SUPABASE_SERVICE_ROLE_KEY') ?? ''}`
    },
  }
});

app.post('/send-notifications', async (req, res) => {
  const reqBody: RequestBody = req.body;

  // Validate required fields
  if (!reqBody.title || !reqBody.body) {
    return res.status(400).json({
      error: "Request body must have title, and body"
    });
  }

  const connection = await connect({
    hostname: Deno.env.get("RABBITMQ_HOST") || "localhost",
    port: parseInt(Deno.env.get("RABBITMQ_PORT") || "5672"),
    username: Deno.env.get("RABBITMQ_USER") || "guest",
    password: Deno.env.get("RABBITMQ_PASS") || "guest",
  });

  const channel = await connection.createChannel();
  const queueName = "notifications";

  try {
    const destinations = reqBody.users;

    if (destinations.length === 0) {
      return res.status(404).json({ error: "No recipients found" });
    }

    const messages: NotificationMessage[] = destinations.map((dest) => ({
      email: dest.email,
      title: reqBody.title,
      body: replacePlaceholders(reqBody.body, dest.additional_info)
    }));

    // Connect to RabbitMQ
    const connection = await connect({
      hostname: Deno.env.get("RABBITMQ_HOST") || "localhost",
      port: parseInt(Deno.env.get("RABBITMQ_PORT") || "5672"),
      username: Deno.env.get("RABBITMQ_USER") || "guest",
      password: Deno.env.get("RABBITMQ_PASS") || "guest",
    });

    const channel = await connection.createChannel();
    const queueName = "notifications";
    const encoder = new TextEncoder();

    try {
      await channel.assertQueue(queueName, { durable: true });

      // Publish messages and insert into Supabase
      const publishMessages = messages.map(async (message) => {
        await channel.assertQueue(queueName, { durable: true });

        // Use Deno's Buffer implementation
        const messageBuffer = Buffer.from(JSON.stringify(message));

        await channel.sendToQueue(
          queueName,
          messageBuffer,
          { persistent: true }
        );

        try {
          await insertNotifications(supabase, messages, reqBody); // Pass reqBody to insertNotifications
        } catch (error) {
          console.log('Error inserting notifications:', error);
        }
      });

      await Promise.all(publishMessages);

      return res.status(200).json({
        status: "Messages sent and data added to Supabase successfully",
        count: messages.length
      });
    } finally {
      await channel.close();
      await connection.close();
    }
  } catch (error) {
    return res.status(500).json({ error: error });
  }
});

const insertNotifications = async (supabase: any, messages: NotificationMessage[], reqBody: RequestBody) => {
  try {
    // First insert the notification
    const { data: notification, error: notificationError } = await supabase
      .from('notification')
      .insert({
        title: messages[0].title,
        content: messages[0].body,
        type: reqBody.notification_type || NotificationType.Normal
      })
      .select('id')
      .single();

    if (notificationError) {
      throw new Error(`Failed to insert notification: ${notificationError.message}`);
    }

    // Then insert notification-user relationships
    const { error: userError } = await supabase
      .from('notification_user')
      .insert(
        messages.map(message => ({
          notification_id: notification.id,
          to_user_id: message.user_id
        }))
      );

    if (userError) {
      throw new Error(`Failed to insert notification users: ${userError.message}`);
    }

    return notification.id;
  } catch (error) {
    console.error('Supabase insert error:', error);
    throw error;
  }
};

app.listen(port, () => {
  console.log(`Notification service listening on port ${port}`)
})