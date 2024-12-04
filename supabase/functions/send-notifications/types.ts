
export interface NotificationMessage {
  email: string;
  title: string;
  body: string;
  htmlBody: string;
  user_id: string;
}

export enum NotificationType {
  Emergency = 'Emergency',
  Normal = 'Normal',
}

export interface User {
  email: string;
  user_id: string;
  additional_info: { [key: string]: string };
}

export interface RequestBody {
  notification_type?: NotificationType;
  title: string;
  body: string;
  users: User[];
}

export interface UserProfile {
  user_id: string;
  auth_users?: {
    email: string;
  };
}