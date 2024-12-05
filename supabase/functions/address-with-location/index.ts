import express from 'npm:express@4.18.2'
import { Address, ValidationResult, ValidationError } from './types.ts'
import { SupabaseService } from './services/supabase.service.ts'
import { serve } from 'https://deno.land/std@0.145.0/http/server.ts';
import axios from 'npm:axios@1.7.9';

const app = express()
app.use(express.json())
const port = 3000

const geocode_apikey = Deno.env.get('GEOCODE_API_KEY')!;

function validateAddress(address: any): ValidationResult {
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

app.post('/address-with-location', async (req, res) => {
    const validation = validateAddress(req.body);
    if (!validation.isValid) {
        return res.status(400).json({
            success: false,
            errors: validation.errors
        });
    }

    const address: Address = req.body;
    const supabaseService = SupabaseService.getInstance();

    try {
        const formattedAddress = `${address.street_number} ${address.street}, ${address.ward}, ${address.district}, ${address.city}`;
        console.log('Formatted address:', formattedAddress);
        
        const response = await axios.get(
            `https://geocode.maps.co/search?q=${encodeURIComponent(formattedAddress)}&api_key=${geocode_apikey}`
        );
        const data = response.data;
        console.log('Geocoding response:', data);

        if (data.length > 0) {
            const latitude = parseFloat(data[0].lat);
            const longitude = parseFloat(data[0].lon);

            const insertedData = await supabaseService.insertAddressWithLocation(address, latitude, longitude);
            console.log('Inserted data:', insertedData);
            
            res.status(200).json({
                success: true,
                data: insertedData
            });
        } else {
            res.status(404).json({
                success: false,
                error: 'Không tìm thấy tọa độ địa lý'
            });
        }
    } catch (error) {
        console.error('Lỗi:', error);
        res.status(500).json({
            success: false,
            error: 'Đã xảy ra lỗi khi xử lý yêu cầu'
        });
    }
});

app.listen(port, () => {
    console.log(`Dịch vụ địa chỉ với vị trí đang chạy trên cổng ${port}`)
})