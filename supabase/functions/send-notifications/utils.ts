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
export function replacePlaceholders(text: string, additional_info: { [key: string]: string }): string {
  return text.replace(/{(\w+)}/g, (match, key) => additional_info[key] || match);
}

export function createEmailTemplate(title: string, body: string): string {
  return `
    <!DOCTYPE html>
    <html>
      <head>
        <meta charset="utf-8">
        <style>
          .email-container {
            max-width: 600px;
            margin: 0 auto;
            font-family: 'Arial', sans-serif;
            line-height: 1.6;
            color: #333333;
          }
          .header {
            background-color: #7B2CBF;
            padding: 20px;
            text-align: center;
          }
          .header h1 {
            color: white;
            margin: 0;
            font-size: 24px;
          }
          .content {
            padding: 30px;
            background-color: #ffffff;
            border-radius: 0 0 4px 4px;
          }
          .footer {
            text-align: center;
            padding: 20px;
            font-size: 12px;
            color: #666666;
          }
          .safety-tips {
            background-color: #F3E9FA;
            padding: 15px;
            border-radius: 4px;
            margin: 20px 0;
          }
        </style>
      </head>
      <body>
        <div class="email-container">
          <div class="header">
            <h1>SafeYou Notification</h1>
          </div>
          <div class="content">
            <h2>${title}</h2>
            <div class="message-body">
              ${body}
            </div>
            <div class="safety-tips">
              <strong>Safety Tips:</strong>
              <ul>
                <li>Keep your emergency contacts updated</li>
                <li>Share your location with trusted contacts</li>
                <li>Keep your SafeYou app up to date</li>
              </ul>
            </div>
          </div>
          <div class="footer">
            <p>This is an automated message from SafeYou. Please do not reply to this email.</p>
            <p>© ${new Date().getFullYear()} SafeYou. All rights reserved.</p>
          </div>
        </div>
      </body>
    </html>
  `;
}