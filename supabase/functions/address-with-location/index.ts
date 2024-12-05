import express from 'npm:express@4.18.2'
import { Address } from './types.ts'
import { SupabaseService } from './services/supabase.service.ts'
import { serve } from 'https://deno.land/std@0.145.0/http/server.ts';
import axios from 'npm:axios@1.7.9';

const app = express()
app.use(express.json())
const port = 3000

const geocode_apikey = Deno.env.get('GEOCODE_API_KEY')!;

app.post('/address-with-location', async (req, res) => {
  const address: Address = req.body;
  const supabaseService = SupabaseService.getInstance();

  try {
    const formattedAddress = `${address.street_number} ${address.street}, ${address.ward}, ${address.district}, ${address.city}`;
    console.log('Formatted address:', formattedAddress);
    
    const response = await axios.get(
      `https://geocode.maps.co/search?q=${encodeURIComponent(formattedAddress)}&api_key=${geocode_apikey}`
    );
    const data = response.data;
    console.log('Geocoding response:', data);

    if (data.length > 0) {
      const latitude = parseFloat(data[0].lat);
      const longitude = parseFloat(data[0].lon);

      const insertedData = await supabaseService.insertAddressWithLocation(address, latitude, longitude);
      console.log('Inserted data:', insertedData);
      
      res.status(200).json({
        success: true,
        data: insertedData
      });
    } else {
      res.status(404).json({
        success: false,
        error: 'No geolocation data found'
      });
    }
  } catch (error) {
    console.error('Error:', error);
    res.status(500).json({
      success: false,
      error: error.message
    });
  }
});

app.listen(port, () => {
  console.log(`Address with location service listening on port ${port}`)
})