
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