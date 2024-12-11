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
export type Urgency = 'SLOW' | 'MEDIUM' | 'HIGH';
export type TaskStatus = 'TODO' | 'DOING' | 'DONE' | 'FAILED';

export interface Address {
    street_number: string;
    street: string;
    ward: string;
    city: string;
    district: string;
}

export interface Report {
    title: string;
    content: string;
    report_type: string;  // changed from ReportType
    urgency: Urgency;
    meta_data?: Record<string, any>;
    address_id: string;  // optional since it's added after address creation
}

export interface Task {
    title: string;
    description: string;
    required_skills?: string;
    urgency: Urgency;
    start_date: string;  // changed from startdate
    end_date: string;    // changed from enddate
    task_status: TaskStatus;  // changed from taskstatus
    address_id: string;  // made optional since it's added after address creation
}

export interface Donation {
    role: string;
    fullname: string;
    email: string;
    phonenumber: string;
    cango: string;
    mask: string;
    rice: string;
    noodle: string;
    vegetable: string;
    meat: string;
    address_id?: string;
}

export interface ValidationError {
    field: string;
    message: string;
}

export type ValidationResult = {
    isValid: boolean;
    errors: ValidationError[];
}

export interface PlaceSearchRequest {
    place: string[];
    id?: string;
    link?: string;
    title?: string;
    pdf_link?: string;
    metadata?: string;
    description?: string;
    crawl_id?: string;
    summary?: string;
}

export interface PlaceDetails {
    place: string;
    lat: number;
    lon: number;
    link?: string;
    title?: string;
    pdf_link?: string;
    metadata?: string;
    description?: string;
    crawl_id?: string;
    summary?: string;
}

export interface MultiPlaceSearchResponse {
    users: any[];
    places: PlaceDetails[];
}