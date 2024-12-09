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
export interface NotificationMessage {
  email: string;
  phone?: string;  // Added phone field
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