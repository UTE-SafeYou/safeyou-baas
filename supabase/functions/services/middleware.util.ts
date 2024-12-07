
export const adminRequired = async (user: any) => {
    if (!user || (user.role !== 'service_role' && user.user_role !== 'admin')) {
        throw new Error('Admin access required');
    }
    return true;
};

export const createErrorResponse = (message: string, status: number = 403) => {
    return new Response(JSON.stringify({ error: message }), {
        status,
        headers: { 'Content-Type': 'application/json' }
    });
};