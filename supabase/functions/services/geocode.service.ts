import axios from 'npm:axios@1.7.9';
import { Address } from '../shared/types.ts';

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
        return `${address.street_number} ${address.street}, ${address.ward}, ${address.city}, ${address.district}`;
    }

    async getCoordinates(address: Address): Promise<GeoLocation> {
        const formattedAddress = this.formatAddress(address);
        const response = await axios.get(
            // `https://geocode.maps.co/search?q=${encodeURIComponent(formattedAddress)}&api_key=${this.apiKey}`
            `https://rsapi.goong.io/geocode?address=${encodeURIComponent(formattedAddress)}&api_key=${this.apiKey}`
        );

        // console.log(`https://rsapi.goong.io/geocode?address=${encodeURIComponent(formattedAddress)}&api_key=${this.apiKey}`)

        // console.log(response.data);
        

        if (!response.data.results.length) {
            throw new Error('Location not found');
        }

        return {
            latitude: parseFloat(response.data.results[0].geometry.location.lat),
            longitude: parseFloat(response.data.results[0].geometry.location.lng)
        };
    }
}