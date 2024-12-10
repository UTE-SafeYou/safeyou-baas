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
import axios from 'npm:axios@1.7.9';
import { Address } from '../shared/types.ts';
import { BoundaryDecoderService } from './boundary-decoder.service.ts';

export interface GeoLocation {
    latitude: number;
    longitude: number;
    boundary?: string;
}

export class GeocodeService {
    private static instance: GeocodeService;
    private readonly apiKey: string;

    private constructor() {
        this.apiKey = Deno.env.get('GEOCODE_API_KEY') ?? '';
    }

    public static getInstance(): GeocodeService {
        if (!GeocodeService.instance) {
            GeocodeService.instance = new GeocodeService();
        }
        return GeocodeService.instance;
    }

    private formatAddress(address: Address): string {
        return `${address.street} ${address.ward} ${address.city} ${address.district}`;
    }

    async getCoordinates(address: Address): Promise<GeoLocation> {
        const formattedAddress = this.formatAddress(address);
        const response = await axios.get(
            `https://rsapi.goong.io/geocode?address=${encodeURIComponent(formattedAddress)}&api_key=${this.apiKey}`
        );

        if (!response.data.results.length) {
            throw new Error('Location not found');
        }

        const result = response.data.results[0];
        return {
            latitude: parseFloat(result.geometry.location.lat),
            longitude: parseFloat(result.geometry.location.lng),
            boundary: result.geometry.boundary
        };
    }

    async getBestBoundaryResult(address: string): Promise<GeoLocation> {
        const response = await axios.get(
            `https://rsapi.goong.io/geocode?address=${encodeURIComponent(address)}&api_key=${this.apiKey}`
        );

        if (!response.data.results.length) {
            throw new Error('Location not found');
        }

        // Find first result with boundary
        const boundaryResult = response.data.results.find(r => r.geometry.boundary);
        if (!boundaryResult) {
            // If no boundary found, return first result
            const result = response.data.results[0];
            return {
                latitude: parseFloat(result.geometry.location.lat),
                longitude: parseFloat(result.geometry.location.lng)
            };
        }

        return {
            latitude: parseFloat(boundaryResult.geometry.location.lat),
            longitude: parseFloat(boundaryResult.geometry.location.lng),
            boundary: boundaryResult.geometry.boundary
        };
    }

    async isCoordinateInArea(lat: number, lng: number, address: Address): Promise<boolean> {
        const location = await this.getCoordinates(address);
        if (!location.boundary) return false;

        const boundaryDecoder = BoundaryDecoderService.getInstance();
        return boundaryDecoder.isWithinBoundary(lat, lng, location.boundary);
    }
}