import { ValidationError, ValidationResult } from '../shared/types.ts';

export class DonationValidationService {
    public static validateDonation(donation: any): ValidationResult {
        const errors: ValidationError[] = [];
        const requiredFields = [
            { key: 'role', label: 'Vai trò' },
            { key: 'fullname', label: 'Họ và tên' },
            { key: 'email', label: 'Email' },
            { key: 'phonenumber', label: 'Số điện thoại' },
            { key: 'cango', label: 'Có thể đi giao hàng' },
            { key: 'mask', label: 'Số khẩu trang' },
            { key: 'rice', label: 'Số gói cơm' },
            { key: 'noodle', label: 'Số gói mì' },
            { key: 'vegetable', label: 'Số gói rau' },
            { key: 'meat', label: 'Số gói thịt' }
        ];

        for (const { key, label } of requiredFields) {
            if (!donation[key]) {
                errors.push({
                    field: key,
                    message: `${label} không được để trống`
                });
            } else if (typeof donation[key] !== 'string') {
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