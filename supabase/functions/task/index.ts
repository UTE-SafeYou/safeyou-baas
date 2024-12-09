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
import { requireAdmin } from '../services/auth.middleware.ts'
import { GeocodeService } from '../services/geocode.service.ts'
import { createErrorResponse, createResponse } from '../services/http.util.ts'
import { SupabaseService } from '../services/supabase.service.ts'
import { TaskValidationService } from '../services/task-validation.service.ts'

serve(async (req) => {
  try {
    if (req.method !== 'POST') {
      return createErrorResponse('Method not allowed', 405);
    }

    const auth = await requireAdmin(req);
    if (auth instanceof Response) return auth;

    const { address, task } = await req.json()
    
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

    const taskValidation = TaskValidationService.validateTask(task)
    if (!taskValidation.isValid) {
      return new Response(JSON.stringify({ 
        success: false, 
        errors: taskValidation.errors 
      }), {
        status: 400,
        headers: { 'Content-Type': 'application/json' }
      })
    }

    const geocodeService = GeocodeService.getInstance()
    const { latitude, longitude } = await geocodeService.getCoordinates(address)

    const supabaseService = SupabaseService.getInstance()
    const data = await supabaseService.insertTaskWithAddress(
      { ...task, created_by: auth.user.id },  // Add user ID to task
      address,
      latitude,
      longitude
    )

    return createResponse(data);
  } catch (error) {
    console.error('Error:', error);
    return createErrorResponse(error.message, 500);
  }
})
