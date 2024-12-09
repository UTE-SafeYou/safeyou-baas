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

export class AddressValidationService {
    public static validateAddress(address: any): ValidationResult {
        const errors: ValidationError[] = [];
        const requiredFields = [
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