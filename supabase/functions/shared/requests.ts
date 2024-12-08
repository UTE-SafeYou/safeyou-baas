export interface LocationRequest {
    latitude: number;
    longitude: number;
    radius: number; // in meters
}

export type LocationRequestArray = LocationRequest[];