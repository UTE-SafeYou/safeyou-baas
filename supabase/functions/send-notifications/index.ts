// Follow this setup guide to integrate the Deno language server with your editor:
// https://deno.land/manual/getting_started/setup_your_environment
// This enables autocomplete, go to definition, etc.

// Setup type definitions for built-in Supabase Runtime APIs
import "jsr:@supabase/functions-js/edge-runtime.d.ts"
import { connect } from "https://deno.land/x/amqp@v0.23.1/mod.ts"

interface NotificationMessage {
  email: string;
  title: string;
  body: string;
}

Deno.serve(async (req) => {
  // Only allow POST method
  if (req.method !== "POST") {
    return new Response(JSON.stringify({ error: "Method not allowed" }), {
      status: 405,
      headers: { "Content-Type": "application/json" }
    });
  }

  try {
    const messages: NotificationMessage[] = await req.json();

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
      
      // Publish all messages
      const encoder = new TextEncoder();
      const publishPromises = messages.map((message) =>
        channel.publish(
          { exchange: "", routingKey: queueName },
          { contentType: "application/json" },
          encoder.encode(JSON.stringify(message))
        )
      );

      await Promise.all(publishPromises);

      return new Response(JSON.stringify({ 
        status: "Messages sent successfully",
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