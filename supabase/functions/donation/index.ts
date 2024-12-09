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
import { serve } from "https://deno.land/std@0.168.0/http/server.ts"
import { AddressValidationService } from '../services/address-validation.service.ts'
import { DonationValidationService } from '../services/donation-validation.service.ts'
import { GeocodeService } from '../services/geocode.service.ts'
import { SupabaseService } from '../services/supabase.service.ts'

serve(async (req) => {
    try {
        if (req.method !== 'POST') {
            return new Response(JSON.stringify({error: 'Method not allowed'}), {
                status: 405,
                headers: {'Content-Type': 'application/json'}
            })
        }

        const {address, donation} = await req.json()

        const addressValidation = AddressValidationService.validateAddress(address)
        if (!addressValidation.isValid) {
            return new Response(JSON.stringify({
                success: false,
                errors: addressValidation.errors
            }), {
                status: 400,
                headers: {'Content-Type': 'application/json'}
            })
        }

        const donationValidation = DonationValidationService.validateDonation(donation)
        if (!donationValidation.isValid) {
            return new Response(JSON.stringify({
                success: false,
                errors: donationValidation.errors
            }), {
                status: 400,
                headers: {'Content-Type': 'application/json'}
            })
        }

        const geocodeService = GeocodeService.getInstance()
        const {latitude, longitude} = await geocodeService.getCoordinates(address)

        const supabaseService = SupabaseService.getInstance()
        const data = await supabaseService.insertDonationWithAddress(
            donation,
            address,
            latitude,
            longitude
        )

        return new Response(JSON.stringify({success: true, data}), {
            status: 200,
            headers: {'Content-Type': 'application/json'}
        })
    } catch (error) {
        console.error('Error:', error)
        return new Response(JSON.stringify({
            success: false,
            error: error.message
        }), {
            status: 500,
            headers: {'Content-Type': 'application/json'}
        })
    }
})
