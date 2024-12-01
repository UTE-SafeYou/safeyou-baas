// Follow this setup guide to integrate the Deno language server with your editor:
// https://deno.land/manual/getting_started/setup_your_environment
// This enables autocomplete, go to definition, etc.

// Setup type definitions for built-in Supabase Runtime APIs
import "jsr:@supabase/functions-js/edge-runtime.d.ts"
import { connect } from "https://deno.land/x/amqp@v0.23.1/mod.ts"
import { createClient } from '@supabase/supabase-js'

interface NotificationMessage {
  email: string;
  title: string;
  body: string;
}

enum SendType {
  All = 'All',
  User = 'User',
  Admin = 'Admin',
}

enumm NotificationType {
  Emergency = 'Emergency',
  Normal = 'Normal',
}

interface RequestBody {
  from_user_id: string;
  send_type: SendType;
  title: string;
  body: string;
}

interface UserProfile {
  user_id: string;
  auth_users?: {
    email: string;
  };
}

// Initialize Supabase client
const supabaseUrl = Deno.env.get('SUPABASE_URL')!;
const supabaseKey = Deno.env.get('SUPABASE_SERVICE_ROLE_KEY')!;
const supabase = createClient(supabaseUrl, supabaseKey);


Deno.serve(async (req) => {
  // Only allow POST method
  if (req.method !== "POST") {
    return new Response(JSON.stringify({ error: "Method not allowed" }), {
      status: 405,
      headers: { "Content-Type": "application/json" }
    });
  }

  const reqBody: RequestBody = await req.json();

  // Validate required fields
  if (!reqBody.from_user_id || !reqBody.send_type || !reqBody.title || !reqBody.body) {
    return new Response(JSON.stringify({ error: "Request body must have from_user_id, send_type, title, and body" }), {
      status: 400,
      headers: { "Content-Type": "application/json" }
    });
  }

  try {
    const destinations = await selectUserProfiles(supabase, {
      sendType: reqBody.send_type,
      fromUserId: reqBody.from_user_id
    });

    if (destinations.length === 0) {
      return new Response(
        JSON.stringify({ error: "No recipients found" }),
        {
          status: 404,
          headers: { "Content-Type": "application/json" }
        }
      );
    }

    // Continue with the rest of your code...

  } catch (error) {
    console.error('User selection error:', error);
    return new Response(
      JSON.stringify({ error: "Failed to fetch recipients" }),
      {
        status: 500,
        headers: { "Content-Type": "application/json" }
      }
    );
  }

  const messages: NotificationMessage[] = destinations.map((dest) => ({
    email: dest.email,
    title: reqBody.title,
    body: reqBody.body
  }));

  try {

    // Validate array and required fields
    if (!Array.isArray(messages) || messages.length === 0) {
      return new Response(JSON.stringify({ error: "Request body must be an array of messages" }), {
        status: 400,
        headers: { "Content-Type": "application/json" }
      });
    }

    // Validate all messages have required fields
    const invalidMessages = messages.filter(msg =>
      !msg.email || !msg.title || !msg.body
    );

    if (invalidMessages.length > 0) {
      return new Response(JSON.stringify({ error: "All messages must have email, title, and body" }), {
        status: 400,
        headers: { "Content-Type": "application/json" }
      });
    }

    // Connect to RabbitMQ
    const connection = await connect({
      hostname: Deno.env.get("RABBITMQ_HOST") || "localhost",
      port: parseInt(Deno.env.get("RABBITMQ_PORT") || "5672"),
      username: Deno.env.get("RABBITMQ_USER") || "guest",
      password: Deno.env.get("RABBITMQ_PASS") || "guest",
    });

    const channel = await connection.openChannel();
    const queueName = "notifications";

    try {
      await channel.declareQueue({ queue: queueName, durable: true });

      // Publish all messages to RabbitMQ and insert into Supabase
      const encoder = new TextEncoder();
      const publishPromises = messages.map(async (message) => {
        // Publish to RabbitMQ
        await channel.publish(
          { exchange: "", routingKey: queueName },
          {},
          encoder.encode(JSON.stringify(message))
        );

        // Insert into Supabase
        try {
          await insertNotifications(supabase, messages, reqBody.from_user_id);
        } catch (error) {
          console.error('Failed to insert notifications:', error);
          // Continue with RabbitMQ publish even if DB insert fails
        }
      });

      await Promise.all(publishPromises);

      return new Response(JSON.stringify({
        status: "Messages sent and data added to Supabase successfully",
        count: messages.length
      }), {
        status: 200,
        headers: { "Content-Type": "application/json" }
      });
    } finally {
      await channel.close();
      await connection.close();
    }
  } catch (error) {
    console.error("Error:", error);
    return new Response(JSON.stringify({ error: "Internal server error" }), {
      status: 500,
      headers: { "Content-Type": "application/json" }
    });
  }
});

const selectUserProfiles = async (
  supabase: any,
  options: {
    sendType: SendType;
    fromUserId: string;
  }
) => {
  let query = supabase
    .from('user_profiles')
    .select(`
      user_id,
      user_roles (role),
      auth_users:auth.users (email)
    `).neq('user_id', options.fromUserId);

  switch (options.sendType) {
    case SendType.All:
      query = query
        .order('profile_id', { ascending: true });
      break;
    case SendType.User:
      query = query.eq('user_roles.role', 'user');
      break;
    case SendType.Admin:
      query = query.eq('user_roles.role', 'admin');
      break;
  }

  const { data, error } = await query;

  if (error) {
    throw new Error(`Failed to fetch users: ${error.message}`);
  }

  return data?.map(user => ({
    email: user.auth_users?.email,
    user_id: user.user_id
  })) || [];
};

const insertNotifications = async (supabase: any, messages: NotificationMessage[], fromUserId: string) => {
  try {
    // First insert the notification
    const { data: notification, error: notificationError } = await supabase
      .from('notification')
      .insert({
        title: messages[0].title, // All messages have same title
        content: messages[0].body, // All messages have same body
        // type: NotificationType.Normal, // Default type
        user_id: fromUserId,
        sendtype: reqBody.send_type
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