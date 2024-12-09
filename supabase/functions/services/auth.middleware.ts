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
import { parseJwt } from '../auth/utils.ts';
import { createErrorResponse } from './middleware.util.ts';
export const authenticateRequest = async (req: Request): Promise<{ user: any } | Response> => {
    const authHeader = req.headers.get('authorization');
    if (!authHeader?.startsWith('Bearer ')) {
        return createErrorResponse('Unauthorized', 401);
    }

    try {
        const token = authHeader.split(' ')[1];
        const user = parseJwt(token);
        return { user };
    } catch (error) {
        return createErrorResponse('Invalid token', 401);
    }
};

export const requireAdmin = async (req: Request): Promise<{ user: any } | Response> => {
    const result = await authenticateRequest(req);
    if (result instanceof Response) return result;

    const { user } = result;
    if (user.role !== 'service_role' && user.user_role !== 'admin') {
        return createErrorResponse('Admin access required', 403);
    }

    return { user };
};