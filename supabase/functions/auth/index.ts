import express from 'npm:express@4.18.2'
import { createClient, SupabaseClient } from 'jsr:@supabase/supabase-js@2'
import opencage from 'npm:opencage-api-client@1.0.7'
import { parseJwt } from './utils.ts'

const app = express()
app.use(express.json())

const port = 3000

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


app.post('/auth/sign-in', async (req, res) => {

  let { email, password } = req.body

  if (!email || !password) {
    res.status(400).json({ error: 'Email and password are required' })
    return
  }

  let { data, error } = await supabase.auth.signInWithPassword({
    email: email,
    password: password
  })

  if (error) {
    res.status(500).json({ error: error.message })
  } else {
    res.json({ data })
  }
}
)

async function signUpUser(req, res, role) {
  let {
    email, password, phone,
    fullname, street_number, ward, street, district, city, location, citizen_id
  } = req.body

  if (!email || !password) {
    res.status(400).json({ error: 'E2mail and password are required' })
    return;
  }
  if (!fullname) {
    res.status(400).json({ error: 'fullname is required' })
    return;
  }

  let { data: { user }, error } = await supabase.auth.signUp({
    email: email,
    phone: phone,
    password: password,
  })

  if (error) {
    res.status(500).json({ error: error.message })
    return;
  }

  const { data: user_role, error: user_role_error } = await supabase
    .from('user_roles')
    .insert([
      {
        role: role,
        user_id: user.id
      }
    ])

  if (user_role_error) {
    res.status(500).json({ error: user_role_error.message })
    return;
  }

  const { data: address_data, error: address_error } = await supabase
    .from('address')
    .insert([
      {
        street_number: street_number,
        street: street,
        district: district,
        city: city,
        ward: ward,
        location: location || null,
      },
    ])
    .select()
  if (address_error) {
    res.status(500).json({ error: address_error.message })
    return;
  }

  const { data: user_profile, error: user_profile_error } = await supabase
    .from('user_profiles')
    .insert([
      {
        fullname: fullname,
        citizen_id: citizen_id,
        address_id: address_data[0].address_id,
        user_id: user.id,
        email: email,
        phone: phone
      }
    ])
    .select()

  if (user_profile_error) {
    res.status(500).json({ error: user_profile_error.message })
    return;
  }

  res.status(200).json({
    user_profile: user_profile,
  })
}

app.post('/auth/sign-up', (req, res) => signUpUser(req, res, 'user'))

app.post('/auth/admin/sign-up', (req, res, next) => {
  const authHeader = req.headers.authorization;
  if (!authHeader) {
    res.status(401).json({ error: 'Authorization header is required' });
    return;
  }

  const token = authHeader.split(' ')[1];
  try {
    const decoded = parseJwt(token);
    console.log(decoded);
    if (decoded.role !== 'service_role' && decoded.user_role !== 'admin') {
      res.status(403).json({ error: 'Forbidden: Invalid JWT role' });
      return;
    }
    next();
  } catch (error) {
    res.status(403).json({ error: error.message });
  }
}, (req, res) => signUpUser(req, res, 'admin'));

// Verify route with verify-token is param 
app.post('/auth/verify/:token', async (req, res) => {
  let { token } = req.params

  let { data, error } = await supabase.auth.verifyOtp({ token_hash: token, type: 'email' })

  if (error) {
    res.status(500).json({ error: error.message })
  } else {
    res.json({ data })
  }
})

app.listen(port, () => {
  console.log(`I'm healthy now 🌱 ${port}`)
})