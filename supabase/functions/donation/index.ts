import { serve } from "https://deno.land/std@0.168.0/http/server.ts"
import { AddressValidationService } from '../services/address-validation.service.ts'
import { DonationValidationService } from '../services/donation-validation.service.ts'
import { GeocodeService } from '../services/geocode.service.ts'
import { SupabaseService } from '../services/supabase.service.ts'

serve(async (req) => {
  try {
    if (req.method !== 'POST') {
      return new Response(JSON.stringify({ error: 'Method not allowed' }), {
        status: 405,
        headers: { 'Content-Type': 'application/json' }
      })
    }

    const { address, donation } = await req.json()
    
    const addressValidation = AddressValidationService.validateAddress(address)
    if (!addressValidation.isValid) {
      return new Response(JSON.stringify({ 
        success: false, 
        errors: addressValidation.errors 
      }), {
        status: 400,
        headers: { 'Content-Type': 'application/json' }
      })
    }

    const donationValidation = DonationValidationService.validateDonation(donation)
    if (!donationValidation.isValid) {
      return new Response(JSON.stringify({ 
        success: false, 
        errors: donationValidation.errors 
      }), {
        status: 400,
        headers: { 'Content-Type': 'application/json' }
      })
    }

    const geocodeService = GeocodeService.getInstance()
    const { latitude, longitude } = await geocodeService.getCoordinates(address)

    const supabaseService = SupabaseService.getInstance()
    const data = await supabaseService.insertDonationWithAddress(
      { ...donation, donated_by: user.id },  // Add user ID to donation
      address,
      latitude,
      longitude
    )

    return new Response(JSON.stringify({ success: true, data }), {
      status: 200,
      headers: { 'Content-Type': 'application/json' }
    })
  } catch (error) {
    console.error('Error:', error)
    return new Response(JSON.stringify({ 
      success: false, 
      error: error.message 
    }), {
      status: 500,
      headers: { 'Content-Type': 'application/json' }
    })
  }
})
