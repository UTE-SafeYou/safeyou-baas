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


// Verify route with verify-token is param 
app.post('/documents/add', async (req, res) => {
  let { } = req.body

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