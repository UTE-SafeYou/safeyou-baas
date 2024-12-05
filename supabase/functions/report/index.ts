// Follow this setup guide to integrate the Deno language server with your editor:
// https://deno.land/manual/getting_started/setup_your_environment
// This enables autocomplete, go to definition, etc.

// Setup type definitions for built-in Supabase Runtime APIs
import "jsr:@supabase/functions-js/edge-runtime.d.ts"
import { Report, ValidationError, ValidationResult } from '../shared/types.ts'
import { SupabaseService } from '../services/supabase.service.ts'
import express from 'npm:express@4.18.2'
import { validateAddress } from '../address-with-location/index.ts'
import axios from 'npm:axios@1.7.9'
import { GeocodeService } from '../services/geocode.service.ts'

const app = express()
app.use(express.json())

function validateReport(report: any): ValidationResult {
    const errors: ValidationError[] = [];

    if (!report.address_id) {
        errors.push({
            field: 'address_id',
            message: 'Address ID is required'
        });
    }

    if (report.urgency && !['low', 'medium', 'high', 'critical'].includes(report.urgency)) {
        errors.push({
            field: 'urgency',
            message: 'Invalid urgency level'
        });
    }

    return {
        isValid: errors.length === 0,
        errors
    };
}

app.post('/report', async (req, res) => {
    const { address, report } = req.body;
    
    const addressValidation = validateAddress(address);
    if (!addressValidation.isValid) {
        return res.status(400).json({
            success: false,
            errors: addressValidation.errors
        });
    }

    const reportValidation = validateReport(report);
    if (!reportValidation.isValid) {
        return res.status(400).json({
            success: false,
            errors: reportValidation.errors
        });
    }

    try {
        const geocodeService = GeocodeService.getInstance();
        const { latitude, longitude } = await geocodeService.getCoordinates(address);

        const supabaseService = SupabaseService.getInstance();
        const data = await supabaseService.insertReportWithAddress(report, address, latitude, longitude);

        res.status(200).json({
            success: true,
            data
        });
    } catch (error) {
        console.error('Error:', error);
        res.status(500).json({
            success: false,
            error: error.message
        });
    }
});

app.listen(3000)

/* To invoke locally:

  1. Run `supabase start` (see: https://supabase.com/docs/reference/cli/supabase-start)
  2. Make an HTTP request:

  curl -i --location --request POST 'http://127.0.0.1:54321/functions/v1/report' \
    --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0' \
    --header 'Content-Type: application/json' \
    --data '{"name":"Functions"}'

*/
