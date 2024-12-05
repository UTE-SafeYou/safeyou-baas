
import { Address, ValidationResult, ValidationError } from '../shared/types.ts';

export class AddressValidationService {
    public static validateAddress(address: any): ValidationResult {
        const errors: ValidationError[] = [];
        const requiredFields = [
            { key: 'street_number', label: 'Số nhà' },
            { key: 'street', label: 'Đường' },
            { key: 'ward', label: 'Phường' },
            { key: 'district', label: 'Quận' },
            { key: 'city', label: 'Thành phố' }
        ];

        for (const { key, label } of requiredFields) {
            if (!address[key]) {
                errors.push({
                    field: key,
                    message: `${label} không được để trống`
                });
            } else if (typeof address[key] !== 'string') {
                errors.push({
                    field: key,
                    message: `${label} phải là chuỗi ký tự`
                });
            }
        }

        return {
            isValid: errors.length === 0,
            errors
        };
    }
}