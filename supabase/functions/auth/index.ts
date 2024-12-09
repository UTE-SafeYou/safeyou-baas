import { serve } from "https://deno.land/std@0.168.0/http/server.ts";
import { createClient } from 'npm:@supabase/supabase-js';
import { AddressValidationService } from '../services/address-validation.service.ts';
import { GeocodeService } from '../services/geocode.service.ts';
import { createErrorResponse, createResponse } from '../services/http.util.ts';
import { SupabaseService } from '../services/supabase.service.ts';

const supabase = createClient(
  Deno.env.get('SUPABASE_URL') ?? '',
  Deno.env.get('SUPABASE_ANON_KEY') ?? '',
  {
    'global': {
      'headers': {
        'Authorization': `Bearer ${Deno.env.get('SUPABASE_ANON_KEY') ?? ''}`
      },
    }
  },
)

async function signUpUser(data: any, role: string) {
  const {
    email, password, phone,
    fullname, ward, street, district, city, citizen_id
  } = data;

  if (!email || !password) {
    throw new Error('Email and password are required');
  }
  if (!fullname) {
    throw new Error('fullname is required');
  }

  const address = { street, ward, district, city };
  const addressValidation = AddressValidationService.validateAddress(address);
  if (!addressValidation.isValid) {
    throw new Error(addressValidation.errors.map(e => e.message).join(', '));
  }

  const { data: { user }, error } = await supabase.auth.signUp({
    email,
    phone,
    password,
  });

  if (error) throw error;

  const { error: user_role_error } = await supabase
    .from('user_roles')
    .insert([{ role, user_id: user.id }]);

  if (user_role_error) throw user_role_error;

  const geocodeService = GeocodeService.getInstance();
  const { latitude, longitude } = await geocodeService.getCoordinates(address);

  const supabaseService = SupabaseService.getInstance();
  const address_data = await supabaseService.insertAddressWithLocation(
    address,
    latitude,
    longitude
  );

  const { data: user_profile, error: user_profile_error } = await supabase
    .from('user_profiles')
    .insert([{
      fullname,
      citizen_id,
      address_id: address_data.address_id,
      user_id: user.id,
      email,
      phone
    }])
    .select();

  if (user_profile_error) throw user_profile_error;
  return user_profile;
}

serve(async (req) => {
  const url = new URL(req.url);
  
  try {
    // Sign In Route
    if (url.pathname === '/auth/sign-in' && req.method === 'POST') {
      const { email, password } = await req.json();
      const { data, error } = await supabase.auth.signInWithPassword({
        email,
        password
      });
      if (error) throw error;
      return createResponse(data);
    }

    // Regular Sign Up Route
    if (url.pathname === '/auth/sign-up' && req.method === 'POST') {
      const data = await req.json();
      const result = await signUpUser(data, 'user');
      return createResponse(result);
    }

    // Admin Sign Up Route
    if (url.pathname === '/auth/admin/sign-up' && req.method === 'POST') {
      // const auth = await requireAdmin(req);
      // if (auth instanceof Response) return auth;

      // const authHeader = req.headers.get('authorization');
      // if (!authHeader) {
      //   return createErrorResponse('Authorization header is required', 401);
      // }

      // const token = authHeader.split(' ')[1];
      // const decoded = parseJwt(token);
      // if (decoded.role !== 'service_role' && decoded.user_role !== 'admin') {
      //   return createErrorResponse('Forbidden: Invalid JWT role', 403);
      // }

      const data = await req.json();
      const result = await signUpUser(data, 'admin');
      return createResponse(result);
    }

    // Verify Route
    if (url.pathname.startsWith('/auth/verify/') && req.method === 'POST') {
      const token = url.pathname.split('/').pop();
      const { data, error } = await supabase.auth.verifyOtp({ 
        token_hash: token, 
        type: 'email' 
      });
      if (error) throw error;
      return createResponse(data);
    }

    return createErrorResponse('Not Found', 404);
  } catch (error) {
    return createErrorResponse(error.message, 500);
  }
});