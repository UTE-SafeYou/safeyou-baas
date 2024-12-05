import axios from 'npm:axios@1.7.9'
import { Address } from '../shared/types.ts'

export interface GeoLocation {
    latitude: number;
    longitude: number;
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
        return `${address.street_number} ${address.street}, ${address.ward}, ${address.district}, ${address.city}`;
    }

    async getCoordinates(address: Address): Promise<GeoLocation> {
        const formattedAddress = this.formatAddress(address);
        const response = await axios.get(
            `https://geocode.maps.co/search?q=${encodeURIComponent(formattedAddress)}&api_key=${this.apiKey}`
        );

        if (!response.data.length) {
            throw new Error('Location not found');
        }

        return {
            latitude: parseFloat(response.data[0].lat),
            longitude: parseFloat(response.data[0].lon)
        };
    }
}