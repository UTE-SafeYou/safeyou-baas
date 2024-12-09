// SafeYou
// Copyright (C) 2024  SafeYou

// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
import { Buffer } from "https://deno.land/std@0.177.0/node/buffer.ts";
import { connect } from "npm:amqplib@0.10.3";
import { NotificationMessage } from "../types.ts";

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