export interface Address {
    street_number: string;
    street: string;
    ward: string;
    city: string;
    district: string;
}

export interface ValidationError {
    field: string;
    message: string;
}

export type ValidationResult = {
    isValid: boolean;
    errors: ValidationError[];
}