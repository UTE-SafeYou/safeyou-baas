import express from 'npm:express@4.18.2'
import { createClient, SupabaseClient } from 'jsr:@supabase/supabase-js@2'
import opencage from 'npm:opencage-api-client@1.0.7'

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
app.post('/auth/sign-up', async (req, res) => {
  let {
    // Required
    email, password, phone,

    // Optional
    fullname, street_number, ward, street, district, city, location, citizen_id

  } = req.body

  if (!email || !password) {
    res.status(400).json({ error: 'Email and password are required' })
    return;
  }

  if (!fullname) {
    res.status(400).json({ error: 'Fullname is required' })
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

  // Create user_role and attach to user  
  const { data: user_role, error: user_role_error } = await supabase
    .from('user_roles')
    .insert([
      {
        role: 'user',
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
        email: email // Add email to user_profiles
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
})


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