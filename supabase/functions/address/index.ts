// Follow this setup guide to integrate the Deno language server with your editor:
// https://deno.land/manual/getting_started/setup_your_environment
// This enables autocomplete, go to definition, etc.

// Setup type definitions for built-in Supabase Runtime APIs
import "jsr:@supabase/functions-js/edge-runtime.d.ts";
import { SupabaseService } from '../services/supabase.service.ts';

const corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Headers': 'authorization, x-client-info, apikey, content-type',
};

console.log("Hello from Functions!")

async function handleRequest(req: Request) {
  const url = new URL(req.url);
  const supabaseService = SupabaseService.getInstance();
  
  // Remove '/address' prefix from pathname
  const path = url.pathname.replace('/address', '');

  try {
    switch (path) {
      case '/provinces':
      case 'provinces':
        return new Response(
          JSON.stringify(await supabaseService.getProvinces()),
          { headers: { ...corsHeaders, 'Content-Type': 'application/json' } }
        );

      case '/districts':
      case 'districts':
        const provinceId = url.searchParams.get('provinceId');
        if (!provinceId) {
          return new Response(
            JSON.stringify({ error: 'provinceId is required' }),
            { status: 400, headers: { ...corsHeaders, 'Content-Type': 'application/json' } }
          );
        }
        return new Response(
          JSON.stringify(await supabaseService.getDistrictsByProvince(provinceId)),
          { headers: { ...corsHeaders, 'Content-Type': 'application/json' } }
        );

      case '/communes':
      case 'communes':
        const districtId = url.searchParams.get('districtId');
        if (!districtId) {
          return new Response(
            JSON.stringify({ error: 'districtId is required' }),
            { status: 400, headers: { ...corsHeaders, 'Content-Type': 'application/json' } }
          );
        }
        return new Response(
          JSON.stringify(await supabaseService.getCommunesByDistrict(districtId)),
          { headers: { ...corsHeaders, 'Content-Type': 'application/json' } }
        );

      default:
        return new Response(
          JSON.stringify({ error: 'Not found' }),
          { status: 404, headers: { ...corsHeaders, 'Content-Type': 'application/json' } }
        );
    }
  } catch (error) {
    return new Response(
      JSON.stringify({ error: error.message }),
      { status: 500, headers: { ...corsHeaders, 'Content-Type': 'application/json' } }
    );
  }
}

Deno.serve(async (req) => {
  if (req.method === 'OPTIONS') {
    return new Response('ok', { headers: corsHeaders });
  }

  return handleRequest(req);
});

/* To invoke locally:

  1. Run `supabase start` (see: https://supabase.com/docs/reference/cli/supabase-start)
  2. Make an HTTP request:

  curl -i --location --request POST 'http://127.0.0.1:54321/functions/v1/address' \
    --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZS1kZW1vIiwicm9sZSI6ImFub24iLCJleHAiOjE5ODM4MTI5OTZ9.CRXP1A7WOeoJeXxjNni43kdQwgnWNReilDMblYTn_I0' \
    --header 'Content-Type: application/json' \
    --data '{"name":"Functions"}'

*/