// SafeYou
// Copyright (C) 2024  SafeYou

// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
import { Report, Urgency, ValidationError, ValidationResult } from '../shared/types.ts';

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