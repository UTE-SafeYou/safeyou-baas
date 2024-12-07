import { createClient } from 'npm:@supabase/supabase-js';
import { Address, Report, Task } from '../shared/types.ts';

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
                street_number: address.street_number,
                street: address.street,
                ward: address.ward,
                district: address.district,
                city: address.city,
                latitude,
                longitude,
                location: `SRID=4326;POINT(${longitude} ${latitude})`
            })
            .select('address_id, street_number, street, ward, district, city')  // Select id instead of address_id
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
}