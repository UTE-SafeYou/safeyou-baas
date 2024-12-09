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
import { serve } from "https://deno.land/std/http/server.ts";
import { requireAdmin } from '../services/auth.middleware.ts';
import { RabbitMQService } from './services/rabbitmq.service.ts';
import { SupabaseService } from './services/supabase.service.ts';
import { NotificationMessage, RequestBody } from './types.ts';
import { createEmailTemplate, replacePlaceholders } from './utils.ts';

const handler = async (req: Request): Promise<Response> => {
  if (req.method !== 'POST') {
    return new Response(JSON.stringify({ error: 'Method not allowed' }), {
      status: 405,
      headers: { 'Content-Type': 'application/json' }
    });
  }

  // Add admin authentication
  const authResult = await requireAdmin(req);
  if (authResult instanceof Response) {
    return authResult;
  }

  try {
    const reqBody: RequestBody = await req.json();

    if (!reqBody.title || !reqBody.body) {
      return new Response(JSON.stringify({
        error: "Request body must have title, and body"
      }), { status: 400, headers: { 'Content-Type': 'application/json' } });
    }

    let notificationId: number | null = null;
    const destinations = reqBody.users;

    if (destinations.length === 0) {
      return new Response(JSON.stringify({ error: "No recipients found" }), 
        { status: 404, headers: { 'Content-Type': 'application/json' } });
    }

    const supabaseService = SupabaseService.getInstance();
    const userProfiles = await supabaseService.getUserProfiles(destinations.map(d => d.user_id));
    
    const messages: NotificationMessage[] = destinations.map((dest) => {
      const userProfile = userProfiles.find(p => p.user_id === dest.user_id);
      if (!userProfile?.email) {
        throw new Error(`No email found for user: ${dest.user_id}`);
      }
      
      return {
        email: userProfile.email,
        phone: userProfile.phone,
        user_id: dest.user_id,
        title: reqBody.title,
        body: replacePlaceholders(reqBody.body, dest.additional_info),
        htmlBody: createEmailTemplate(
          reqBody.title,
          replacePlaceholders(reqBody.body, dest.additional_info)
        )
      };
    });

    const rabbitMQService = RabbitMQService.getInstance();

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
        return new Response(JSON.stringify({ error: error.message }), { status: 400, headers: { 'Content-Type': 'application/json' } });
      }
      throw error;
    }

    return new Response(JSON.stringify({
      status: "Messages sent and data added to Supabase successfully",
      count: messages.length,
      notification_id: notificationId
    }), { status: 200, headers: { 'Content-Type': 'application/json' } });

  } catch (error) {
    console.error('Error processing request:', error);
    return new Response(JSON.stringify({ error: error.message }), 
      { status: 500, headers: { 'Content-Type': 'application/json' } });
  }
};

serve(handler, { port: 3000 });