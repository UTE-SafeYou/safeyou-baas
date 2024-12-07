export type Urgency = 'SLOW' | 'MEDIUM' | 'HIGH';
export type TaskStatus = 'TODO' | 'DOING' | 'DONE' | 'FAILED';

export interface Address {
    street_number: string;
    street: string;
    ward: string;
    city: string;
    district: string;
}

export interface Report {
    title: string;
    content: string;
    report_type: string;  // changed from ReportType
    urgency: Urgency;
    meta_data?: Record<string, any>;
    address_id: string;  // optional since it's added after address creation
}

export interface Task {
    title: string;
    description: string;
    required_skills?: string;
    urgency: Urgency;
    start_date: string;  // changed from startdate
    end_date: string;    // changed from enddate
    task_status: TaskStatus;  // changed from taskstatus
    address_id: string;  // made optional since it's added after address creation
}

export interface Donation {
    role: string;
    fullname: string;
    email: string;
    phonenumber: string;
    cango: string;
    mask: string;
    rice: string;
    noodle: string;
    vegetable: string;
    meat: string;
    address_id?: string;
}

export interface ValidationError {
    field: string;
    message: string;
}

export type ValidationResult = {
    isValid: boolean;
    errors: ValidationError[];
}