import { Report, ValidationError, ValidationResult, Urgency } from '../shared/types.ts'

export class ReportValidationService {
    private static readonly REQUIRED_FIELDS = [
        'title',
        'content',
        'report_type',
        'urgency'
    ];

    private static readonly VALID_URGENCY: Urgency[] = ['SLOW', 'MEDIUM', 'HIGH'];

    public static validateReport(report: Partial<Report>): ValidationResult {
        const errors: ValidationError[] = [];

        this.validateRequiredFields(report, errors);
        this.validateEnumValues(report, errors);

        return {
            isValid: errors.length === 0,
            errors
        };
    }

    private static validateRequiredFields(report: Partial<Report>, errors: ValidationError[]): void {
        for (const field of this.REQUIRED_FIELDS) {
            if (!report[field as keyof Report]) {
                errors.push({
                    field,
                    message: `${field} is required`
                });
            }
        }
    }

    private static validateEnumValues(report: Partial<Report>, errors: ValidationError[]): void {
        if (report.urgency && !this.VALID_URGENCY.includes(report.urgency)) {
            errors.push({
                field: 'urgency',
                message: 'Invalid urgency level'
            });
        }
    }
}