export type Urgency = 'low' | 'medium' | 'high' | 'critical';
export type TaskStatus = 'pending' | 'in_progress' | 'completed' | 'cancelled';

export interface Address {
    street_number: string;
    street: string;
    ward: string;
    city: string;
    district: string;
}

export interface Report {
    urgency?: Urgency;
    meta_data?: Record<string, any>;
    title?: string;
    report_type?: string;
    content?: string;
    address_id: string;
}

export interface Task {
    title: string;
    description: string;
    required_skills?: string;
    urgency: Urgency;
    start_date: string;  // changed from startdate
    end_date: string;    // changed from enddate
    task_status: TaskStatus;  // changed from taskstatus
    address_id?: string;  // made optional since it's added after address creation
}

export interface ValidationError {
    field: string;
    message: string;
}

export type ValidationResult = {
    isValid: boolean;
    errors: ValidationError[];
}