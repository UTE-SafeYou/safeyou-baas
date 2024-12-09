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
import jwt from 'npm:jsonwebtoken@8.5.1';

export const parseJwt = (token) => {
    try {
        const decoded = jwt.verify(token, Deno.env.get('JWT_SECRET') ?? 'super-secret-jwt-token-with-at-least-32-characters-long');
        return decoded;
    } catch (error) {
        throw new Error('Invalid token');
    }
}
