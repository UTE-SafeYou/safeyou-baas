
import { connect } from "npm:amqplib@0.10.3"
import { Buffer } from "https://deno.land/std@0.177.0/node/buffer.ts"
import { NotificationMessage } from "../types.ts"

export class RabbitMQService {
  private static instance: RabbitMQService;
  private queueName = "notifications";

  private constructor() {}

  static getInstance(): RabbitMQService {
    if (!RabbitMQService.instance) {
      RabbitMQService.instance = new RabbitMQService();
    }
    return RabbitMQService.instance;
  }

  async sendMessages(messages: NotificationMessage[]): Promise<void> {
    const connection = await this.createConnection();
    const channel = await connection.createChannel();

    try {
      await channel.assertQueue(this.queueName, { durable: true });

      const publishPromises = messages.map(message =>
        channel.sendToQueue(
          this.queueName,
          Buffer.from(JSON.stringify(message)),
          { persistent: true }
        )
      );

      await Promise.all(publishPromises);
    } finally {
      await channel.close();
      await connection.close();
    }
  }

  private async createConnection() {
    return connect({
      hostname: Deno.env.get("RABBITMQ_HOST") || "localhost",
      port: parseInt(Deno.env.get("RABBITMQ_PORT") || "5672"),
      username: Deno.env.get("RABBITMQ_USER") || "guest",
      password: Deno.env.get("RABBITMQ_PASS") || "guest",
    });
  }
}