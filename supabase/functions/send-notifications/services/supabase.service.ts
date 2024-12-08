import { createClient } from 'npm:@supabase/supabase-js@2.39.3';
import { NotificationMessage, NotificationType, RequestBody } from '../types.ts';

export class SupabaseService {
  private static instance: SupabaseService;
  private client;

  private constructor() {
    const supabaseUrl = Deno.env.get('SUPABASE_URL')!;
    const supabaseKey = Deno.env.get('SUPABASE_SERVICE_ROLE_KEY')!;
    this.client = createClient(supabaseUrl, supabaseKey, {
      'global': {
        'headers': {
          'Authorization': `Bearer ${supabaseKey}`
        },
      }
    });
  }

  static getInstance(): SupabaseService {
    if (!SupabaseService.instance) {
      SupabaseService.instance = new SupabaseService();
    }
    return SupabaseService.instance;
  }

  async validateUsers(userIds: string[]): Promise<void> {
    const { data: {users}, error } = await this.client.auth.admin.listUsers({
      filter: `id.in.(${userIds.join(',')})`
    });

    if (error) {
      throw new Error(`Failed to validate users: ${error.message}`);
    }

    // console.log(users);

    const foundUserIds = new Set(users.map(user => user.id));
    const invalidUserIds = userIds.filter(id => !foundUserIds.has(id));

    if (invalidUserIds.length > 0) {
      throw new Error(`Invalid user IDs: ${invalidUserIds.join(', ')}`);
    }
  }

  async deleteNotification(notificationId: number): Promise<void> {
    // Delete notification_user entries first due to foreign key constraint
    const { error: userError } = await this.client
      .from('notification_user')
      .delete()
      .eq('notification_id', notificationId);

    if (userError) {
      console.error(`Failed to delete notification users: ${userError.message}`);
    }

    const { error: notificationError } = await this.client
      .from('notification')
      .delete()
      .eq('id', notificationId);

    if (notificationError) {
      console.error(`Failed to delete notification: ${notificationError.message}`);
    }
  }

  async insertNotifications(messages: NotificationMessage[], reqBody: RequestBody): Promise<number> {
    let notificationId: number | null = null;

    try {
      await this.validateUsers(messages.map(m => m.user_id));

      const { data: notification, error: notificationError } = await this.client
        .from('notification')
        .insert({
          title: reqBody.title,
          content: reqBody.body,
          type: reqBody.notification_type || NotificationType.Normal
        })
        .select('id')
        .single();

      if (notificationError) {
        throw new Error(`Failed to insert notification: ${notificationError.message}`);
      }

      notificationId = notification.id;

      const { error: userError } = await this.client
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
      if (notificationId) {
        await this.deleteNotification(notificationId);
      }
      throw error;
    }
  }

  async getUserProfiles(userIds: string[]): Promise<Array<{user_id: string, email: string, phone?: string}>> {
    const { data, error } = await this.client
      .from('user_profiles')
      .select(`
        user_id,
        email,
        phone
      `)
      .in('user_id', userIds);

    if (error) {
      throw new Error(`Failed to fetch user profiles: ${error.message}`);
    }

    return data.map(profile => ({
      user_id: profile.user_id,
      email: profile?.email,
      phone: profile?.phone
    }));
  }
}