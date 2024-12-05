import { serve } from "https://deno.land/std@0.168.0/http/server.ts"
import { Report } from '../shared/types.ts'
import { SupabaseService } from '../services/supabase.service.ts'
import { AddressValidationService } from '../services/address-validation.service.ts'
import { GeocodeService } from '../services/geocode.service.ts'
import { ReportValidationService } from '../services/report-validation.service.ts'

serve(async (req) => {
  try {
    if (req.method !== 'POST') {
      return new Response(JSON.stringify({ error: 'Method not allowed' }), {
        status: 405,
        headers: { 'Content-Type': 'application/json' }
      })
    }

    const { address, report } = await req.json()
    
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

    const reportValidation = ReportValidationService.validateReport(report)
    if (!reportValidation.isValid) {
      return new Response(JSON.stringify({ 
        success: false, 
        errors: reportValidation.errors 
      }), {
        status: 400,
        headers: { 'Content-Type': 'application/json' }
      })
    }

    const geocodeService = GeocodeService.getInstance()
    const { latitude, longitude } = await geocodeService.getCoordinates(address)

    const supabaseService = SupabaseService.getInstance()
    const data = await supabaseService.insertReportWithAddress(report, address, latitude, longitude)

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
