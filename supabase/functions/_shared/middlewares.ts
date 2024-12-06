// ADMIN ONLY MIDDLEWARE for EXPRESS

import { parseJwt } from './utils.ts';

export const jwtMiddleware = async (req, res, next) => {
    const authorization = req.headers.authorization;
    req.user = null;
    const token = authorization?.replace('Bearer ', '');
    if (!token) {
        res.status(401).json({ message: 'Unauthorized' });
        return;
    }

    try {
        const user = parseJwt(token);
        req.user = user;
        next();
    } catch (error) {
        res.status(401).json({ message: 'Unauthorized' });
    }
}


export const adminRequiredMiddleware = async (req, res, next) => {
    const user = req.user;
    if (user?.role === 'service_role' || user?.user_role === 'admin') {
        next();
    } else {
        res.status(403).json({ message: 'Forbidden' });
    }
};
