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
import { createClient } from 'npm:@supabase/supabase-js';
import { Address, Report, Task } from '../shared/types.ts';
import { BoundaryDecoderService } from './boundary-decoder.service.ts';
import { GeocodeService } from './geocode.service.ts';

export class SupabaseService {
    private static instance: SupabaseService;
    private supabase;

    private constructor() {
        this.supabase = createClient(
            Deno.env.get('SUPABASE_URL') ?? '',
            Deno.env.get('SUPABASE_ANON_KEY') ?? ''
        );
    }

    public static getInstance(): SupabaseService {
        if (!SupabaseService.instance) {
            SupabaseService.instance = new SupabaseService();
        }
        return SupabaseService.instance;
    }

    async insertReport(report: Report) {
        const { data, error } = await this.supabase
            .from('report')
            .insert({
                title: report.title,
                content: report.content,
                report_type: report.report_type,
                urgency: report.urgency,
                meta_data: report.meta_data,
                address_id: report.address_id
            })
            .select('id, title, content, report_type, urgency, meta_data, address_id')
            .single();

        if (error) throw error;
        return data;
    }

    async insertTask(task: Task) {
        const { data, error } = await this.supabase
            .from('task')
            .insert({
                title: task.title,
                description: task.description,
                required_skills: task.required_skills,
                urgency: task.urgency,
                start_date: task.start_date,
                end_date: task.end_date,
                task_status: task.task_status,
                address_id: task.address_id
            })
            .select('id, title, description, required_skills, urgency, start_date, end_date, task_status, address_id')
            .single();

        if (error) throw error;
        return data;
    }

    async insertAddressWithLocation(address: Address, latitude: number, longitude: number) {
        const { data: addressData, error: addressError } = await this.supabase
            .from('address')
            .insert({
                street: address.street,
                ward: address.ward,
                district: address.district,
                city: address.city,
                latitude,
                longitude,
                location: `SRID=4326;POINT(${longitude} ${latitude})`
            })
            .select('address_id, street, ward, district, city')
            .single();

        if (addressError) throw addressError;
        return addressData;  // Return the raw data which includes id
    }

    async insertReportWithAddress(report: Report, address: Address, latitude: number, longitude: number) {
        const addressData = await this.insertAddressWithLocation(address, latitude, longitude);
        if (!addressData?.address_id) {
            throw new Error('Failed to get address id');
        }
        return await this.insertReport({
            ...report,
            address_id: addressData.address_id
        });
    }

    async insertTaskWithAddress(task: Task, address: Address, latitude: number, longitude: number) {
        const addressData = await this.insertAddressWithLocation(address, latitude, longitude);
        if (!addressData?.address_id) {
            throw new Error('Failed to get address id');
        }
        return await this.insertTask({
            ...task,
            address_id: addressData.address_id
        });
    }

    async insertDonation(donation: Donation) {
        const { data, error } = await this.supabase
            .from('donation')
            .insert({
                role: donation.role,
                fullname: donation.fullname,
                email: donation.email,
                phonenumber: donation.phonenumber,
                cango: donation.cango,
                mask: donation.mask,
                rice: donation.rice,
                noodle: donation.noodle,
                vegetable: donation.vegetable,
                meat: donation.meat,
                address_id: donation.address_id
            })
            .select('id, role, fullname, email, phonenumber, cango, mask, rice, noodle, vegetable, meat, address_id')
            .single();

        if (error) throw error;
        return data;
    }

    async insertDonationWithAddress(donation: Donation, address: Address, latitude: number, longitude: number) {
        const addressData = await this.insertAddressWithLocation(address, latitude, longitude);
        if (!addressData?.address_id) {
            throw new Error('Failed to get address id');
        }
        return await this.insertDonation({
            ...donation,
            address_id: addressData.address_id
        });
    }

    async getProvinces() {
        const { data, error } = await this.supabase
            .from('province')
            .select('idprovince, name')
            .order('name');
        
        if (error) throw error;
        return data;
    }

    async getDistrictsByProvince(provinceId: string) {
        const { data, error } = await this.supabase
            .from('district')
            .select('iddistrict, name')
            .eq('idprovince', provinceId)
            .order('name');
        
        if (error) throw error;
        return data;
    }

    async getCommunesByDistrict(districtId: string) {
        const { data, error } = await this.supabase
            .from('commune')
            .select('idcommune, name')
            .eq('iddistrict', districtId)
            .order('name');
        
        if (error) throw error;
        return data;
    }

    async getAllUserWithinRadius(data: LocationRequest | LocationRequest[]) {
        if (Array.isArray(data)) {
            // Handle array of requests
            const promises = data.map(location => 
                this.supabase.rpc('get_users_within_radius', {
                    p_latitude: location.latitude,
                    p_longitude: location.longitude,
                    p_radius: location.radius
                })
            );

            const results = await Promise.all(promises);
            const errors = results.filter(r => r.error).map(r => r.error);
            if (errors.length > 0) throw errors[0];

            // Create a map to track users and their minimum distances
            const userDistances = new Map<string, { distance: number, index: number }>();

            // First pass: Find minimum distances for each user
            results.forEach((result, index) => {
                if (!result.data) return;
                
                result.data.forEach(user => {
                    const current = userDistances.get(user.user_id);
                    if (!current || user.distance < current.distance) {
                        userDistances.set(user.user_id, { distance: user.distance, index });
                    }
                });
            });

            // Second pass: Filter results to keep users only in their closest location
            return results.map((result, index) => {
                if (!result.data) return [];
                
                return result.data.filter(user => 
                    userDistances.get(user.user_id)?.index === index
                );
            });
        }

        // Handle single request
        const { data: users, error } = await this.supabase.rpc('get_users_within_radius', {
            p_latitude: data.latitude,
            p_longitude: data.longitude,
            p_radius: data.radius
        });

        if (error) throw error;
        return users;
    }

    async getUsersByProvince(province: string) {
        const { data, error } = await this.supabase.rpc('get_users_by_province', {
            p_province: province
        });

        if (error) throw error;
        return data;
    }

    async findUsersByAddress(searchTerm: string) {
        const geocodeService = GeocodeService.getInstance();
        const location = await geocodeService.getBestBoundaryResult(searchTerm);

        if (location.boundary) {
            const boundaryDecoder = BoundaryDecoderService.getInstance();
            const coordinates = boundaryDecoder.decodeBoundary(location.boundary);
            
            // Ensure polygon is properly closed by repeating first point at end if needed
            if (coordinates[0][0] !== coordinates[coordinates.length-1][0] || 
                coordinates[0][1] !== coordinates[coordinates.length-1][1]) {
                coordinates.push([...coordinates[0]]);
            }
            
            // Format coordinates for PostGIS with space between coordinates and commas between coordinate pairs
            const polygonPoints = coordinates
                .map(([lat, lng]) => `${lng} ${lat}`)
                .join(', ');

            console.log('Polygon:', polygonPoints);

            // Search users within boundary
            const { data, error } = await this.supabase.rpc('find_users_by_boundary', {
                boundary_points: polygonPoints
            });
            if (error) throw error;
            return data;
        } else {
            // Fallback to text search if no boundary available
            const { data, error } = await this.supabase.rpc('find_users_by_address', {
                search_term: searchTerm
            });
            if (error) throw error;
            return data;
        }
    }
}