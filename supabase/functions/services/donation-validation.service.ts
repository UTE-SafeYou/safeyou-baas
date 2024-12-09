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