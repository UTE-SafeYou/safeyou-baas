import { Task, ValidationError, ValidationResult } from '../shared/types.ts'

export class TaskValidationService {
    private static readonly REQUIRED_FIELDS = [
        'title', 
        'description', 
        'urgency', 
        'start_date',    // changed from startdate
        'end_date',      // changed from enddate
        'task_status'    // changed from taskstatus
    ]

    private static readonly VALID_URGENCY = ['SLOW', 'MEDIUM', 'HIGH']
    private static readonly VALID_STATUS = ['TODO', 'DOING', 'DONE', 'FAILED']

    public static validateTask(task: Partial<Task>): ValidationResult {
        const errors: ValidationError[] = []

        this.validateRequiredFields(task, errors)
        this.validateEnumValues(task, errors)

        return {
            isValid: errors.length === 0,
            errors
        }
    }

    private static validateRequiredFields(task: Partial<Task>, errors: ValidationError[]): void {
        for (const field of this.REQUIRED_FIELDS) {
            if (!task[field as keyof Task]) {
                errors.push({
                    field,
                    message: `${field} is required`
                })
            }
        }
    }

    private static validateEnumValues(task: Partial<Task>, errors: ValidationError[]): void {
        if (task.urgency && !this.VALID_URGENCY.includes(task.urgency)) {
            errors.push({
                field: 'urgency',
                message: 'Invalid urgency level'
            })
        }

        if (task.task_status && !this.VALID_STATUS.includes(task.task_status)) {  // changed from taskstatus
            errors.push({
                field: 'task_status',
                message: 'Invalid task status'
            })
        }
    }
}