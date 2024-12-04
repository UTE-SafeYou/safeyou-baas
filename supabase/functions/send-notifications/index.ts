import express from 'npm:express@4.18.2'
import { RequestBody, NotificationMessage } from './types.ts'
import { RabbitMQService } from './services/rabbitmq.service.ts'
import { SupabaseService } from './services/supabase.service.ts'
import { replacePlaceholders, createEmailTemplate } from './utils.ts'

const app = express()
app.use(express.json())
const port = 3000

app.post('/send-notifications', async (req, res) => {
  const reqBody: RequestBody = req.body;
  let notificationId: number | null = null;

  if (!reqBody.title || !reqBody.body) {
    return res.status(400).json({
      error: "Request body must have title, and body"
    });
  }

  try {
    const destinations = reqBody.users;
    if (destinations.length === 0) {
      return res.status(404).json({ error: "No recipients found" });
    }

    const messages: NotificationMessage[] = destinations.map((dest) => ({
      email: dest.email,
      user_id: dest.user_id,
      title: reqBody.title,
      body: replacePlaceholders(reqBody.body, dest.additional_info),
      htmlBody: createEmailTemplate(
        reqBody.title,
        replacePlaceholders(reqBody.body, dest.additional_info)
      )
    }));

    const rabbitMQService = RabbitMQService.getInstance();
    const supabaseService = SupabaseService.getInstance();

    try {
      // Insert into database first
      notificationId = await supabaseService.insertNotifications(messages, reqBody);
      
      // Then try to send messages
      try {
        await rabbitMQService.sendMessages(messages);
      } catch (error) {
        // If message sending fails, rollback the database changes
        if (notificationId) {
          await supabaseService.deleteNotification(notificationId);
        }
        throw new Error(`Failed to send messages: ${error.message}`);
      }

    } catch (error) {
      if (error.message.includes('Invalid user IDs')) {
        return res.status(400).json({ error: error.message });
      }
      throw error;
    }

    return res.status(200).json({
      status: "Messages sent and data added to Supabase successfully",
      count: messages.length,
      notification_id: notificationId
    });
  } catch (error) {
    console.error('Error processing request:', error);
    return res.status(500).json({ error: error.message });
  }
});

app.listen(port, () => {
  console.log(`Notification service listening on port ${port}`)
})