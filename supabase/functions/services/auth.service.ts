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