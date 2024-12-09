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
import { authenticateRequest } from '../services/auth.middleware.ts'
import { GeocodeService } from '../services/geocode.service.ts'
import { createErrorResponse, createResponse } from '../services/http.util.ts'
import { ReportValidationService } from '../services/report-validation.service.ts'
import { SupabaseService } from '../services/supabase.service.ts'

serve(async (req) => {
  try {
    if (req.method !== 'POST') {
      return createErrorResponse('Method not allowed', 405);
    }

    const auth = await authenticateRequest(req);
    if (auth instanceof Response) return auth;

    const { address, report } = await req.json();
    
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
    const data = await supabaseService.insertReportWithAddress(
      { ...report, reported_by: auth.user.id },
      address,
      latitude,
      longitude
    );

    return createResponse(data);
  } catch (error) {
    console.error('Error:', error);
    return createErrorResponse(error.message, 500);
  }
})
