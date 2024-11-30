import express from 'npm:express@4.18.2'
import { createClient, SupabaseClient } from 'jsr:@supabase/supabase-js@2'

const app = express()
app.use(express.json())

const port = 3000

const supabase = createClient(
  Deno.env.get('SUPABASE_URL') ?? '',
  Deno.env.get('SUPABASE_ANON_KEY') ?? '',
)

app.get('/auth/sign-up', async (req, res) => {

  let { email, password } = req.body

  if (!email || !password) {
    res.status(400).json({ error: 'Email and password are required' })
    return
  }

  let { data, error } = await supabase.auth.signUp({
    email: 'tctoan1024@email.com',
    password: 'wEPKWXmqugmfuXxAcNaI'
  })

  if (error) {
    res.status(500).json({ error: error.message })
  } else {
    res.json({ data })
  }
})


app.listen(port, () => {
  console.log(`I'm healthy now 🌱 ${port}`)
})
