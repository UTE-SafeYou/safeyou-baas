import { createClient } from 'npm:@supabase/supabase-js@2.39.3'
import { Address } from '../types.ts'

export class SupabaseService {
  private static instance: SupabaseService;
  private client;

  private constructor() {
    const supabaseUrl = Deno.env.get('SUPABASE_URL')!;
    const supabaseKey = Deno.env.get('SUPABASE_SERVICE_ROLE_KEY')!;
    this.client = createClient(supabaseUrl, supabaseKey, {
      'global': {
        'headers': {
          'Authorization': `Bearer ${supabaseKey}`
        },
      }
    });
  }

  static getInstance(): SupabaseService {
    if (!SupabaseService.instance) {
      SupabaseService.instance = new SupabaseService();
    }
    return SupabaseService.instance;
  }

  async insertAddressWithLocation(address: Address, latitude: number, longitude: number) {
    const { data, error } = await this.client
      .from('address')
      .insert([{
        street_number: address.street_number,
        street: address.street,
        ward: address.ward,
        city: address.city,
        district: address.district,
        latitude: latitude,
        longitude: longitude,
        location: `SRID=4326;POINT(${longitude} ${latitude})`,
      }])
      .select()
      .single();

    if (error) {
      console.error('Lỗi khi chèn dữ liệu:', error);
      throw new Error('Không thể lưu địa chỉ vào cơ sở dữ liệu');
    }
    return data;
  }
}