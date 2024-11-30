import express from 'npm:express@4.18.2'
import { createClient, SupabaseClient } from 'jsr:@supabase/supabase-js@2'

const app = express()
app.use(express.json())

const port = 3000

const supabase = createClient(
  Deno.env.get('SUPABASE_URL') ?? '',
  Deno.env.get('SUPABASE_SERVICE_ROLE_KEY') ?? '',
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
    fullname, street_number, street, district, city, location

  } = req.body

  if (!email || !password) {
    res.status(400).json({ error: 'Email and password are required' })
    return
  }

  let { data, error } = await supabase.auth.signUp({
    email: email,
    phone: phone,
    password: password
  })

  if (error) {
    res.status(500).json({ error: error.message })
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
        location: location || null,
      },
    ])
    .select()
  if (address_error) {
    res.status(500).json({ error: address_error.message })
    return;
  }

  res.json({ data, address_data })
})

app.listen(port, () => {
  console.log(`I'm healthy now 🌱 ${port}`)
})
