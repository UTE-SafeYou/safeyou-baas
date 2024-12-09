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
export type ApiResponse<T = any> = {
    success: boolean;
    data?: T;
    error?: string;
    errors?: string[];
};

export const createResponse = <T>(data: T, status = 200): Response => {
    return new Response(
        JSON.stringify({ success: true, data }),
        {
            status,
            headers: { 'Content-Type': 'application/json' }
        }
    );
};

export const createErrorResponse = (message: string | string[], status = 400): Response => {
    const payload = Array.isArray(message) 
        ? { success: false, errors: message }
        : { success: false, error: message };

    return new Response(
        JSON.stringify(payload),
        {
            status,
            headers: { 'Content-Type': 'application/json' }
        }
    );
};