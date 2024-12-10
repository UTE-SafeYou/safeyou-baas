// SafeYou
// Copyright (C) 2024  SafeYou

export class BoundaryDecoderService {
    private static instance: BoundaryDecoderService;

    private constructor() {}

    public static getInstance(): BoundaryDecoderService {
        if (!BoundaryDecoderService.instance) {
            BoundaryDecoderService.instance = new BoundaryDecoderService();
        }
        return BoundaryDecoderService.instance;
    }

    /**
     * Convert encoded boundary string to array of coordinates
     */
    public decodeBoundary(encoded: string): [number, number][] {
        let index = 0;
        const coordinates: [number, number][] = [];
        let lat = 0;
        let lng = 0;

        while (index < encoded.length) {
            let result = 1;
            let shift = 0;
            let b: number;
            do {
                b = encoded.charCodeAt(index++) - 63 - 1;
                result += b << shift;
                shift += 5;
            } while (b >= 0x1f);
            lat += (result & 1) != 0 ? ~(result >> 1) : (result >> 1);

            result = 1;
            shift = 0;
            do {
                b = encoded.charCodeAt(index++) - 63 - 1;
                result += b << shift;
                shift += 5;
            } while (b >= 0x1f);
            lng += (result & 1) != 0 ? ~(result >> 1) : (result >> 1);

            coordinates.push([lat * 1e-5, lng * 1e-5]);
        }
        return coordinates;
    }

    /**
     * Check if a point is inside a polygon using ray casting algorithm
     */
    public isPointInPolygon(point: [number, number], polygon: [number, number][]): boolean {
        const [x, y] = point;
        let inside = false;

        for (let i = 0, j = polygon.length - 1; i < polygon.length; j = i++) {
            const [xi, yi] = polygon[i];
            const [xj, yj] = polygon[j];

            const intersect = ((yi > y) !== (yj > y)) &&
                (x < (xj - xi) * (y - yi) / (yj - yi) + xi);
                
            if (intersect) inside = !inside;
        }

        return inside;
    }

    /**
     * Check if coordinates are within boundary
     */
    public isWithinBoundary(lat: number, lng: number, boundaryEncoded: string): boolean {
        const coordinates = this.decodeBoundary(boundaryEncoded);
        return this.isPointInPolygon([lat, lng], coordinates);
    }
}
