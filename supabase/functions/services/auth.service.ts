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
import { createClient } from 'npm:@supabase/supabase-js';

export class AuthService {
    private static instance: AuthService;
    private supabase;

    private constructor() {
        this.supabase = createClient(
            Deno.env.get('SUPABASE_URL') ?? '',
            Deno.env.get('SUPABASE_SERVICE_ROLE_KEY') ?? ''
        );
    }

    public static getInstance(): AuthService {
        if (!AuthService.instance) {
            AuthService.instance = new AuthService();
        }
        return AuthService.instance;
    }

    async verifyToken(token: string) {
        const { data: { user }, error } = await this.supabase.auth.getUser(token);
        if (error) throw new Error('Invalid token');
        
        // Get user role from user_profiles
        const { data: profile } = await this.supabase
            .from('user_profiles')
            .select('user_role')
            .eq('user_id', user.id)
            .single();

        return {
            ...user,
            user_role: profile?.user_role || 'user'
        };
    }
}