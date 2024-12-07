
import { AuthService } from './auth.service.ts';
import { createErrorResponse } from './middleware.util.ts';

export const authenticateRequest = async (req: Request): Promise<{ user: any } | Response> => {
    const authHeader = req.headers.get('authorization');
    if (!authHeader?.startsWith('Bearer ')) {
        return createErrorResponse('Unauthorized', 401);
    }

    try {
        const token = authHeader.split(' ')[1];
        const authService = AuthService.getInstance();
        const user = await authService.verifyToken(token);
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