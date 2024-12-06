import jwt from 'npm:jsonwebtoken@8.5.1';

export const parseJwt = (token) => {
    try {
        const decoded = jwt.verify(token, Deno.env.get('JWT_SECRET') ?? 'super-secret-jwt-token-with-at-least-32-characters-long');
        return decoded;
    } catch (error) {
        throw new Error('Invalid token');
    }
}
