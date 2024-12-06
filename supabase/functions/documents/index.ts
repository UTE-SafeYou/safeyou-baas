import express from 'npm:express@4.18.2'
import { createClient, SupabaseClient } from 'jsr:@supabase/supabase-js@2'
import opencage from 'npm:opencage-api-client@1.0.7'
import { rankResults, cleanText } from './utils/text-processing.ts'
import { jwtMiddleware, adminRequiredMiddleware } from '../_shared/middlewares.ts'

const app = express()
app.use(express.json())

const port = 3000

const supabase = createClient(
  Deno.env.get('SUPABASE_URL') ?? '',
  Deno.env.get('SUPABASE_SERVICE_ROLE_KEY') ?? '',
  {
    'global': {
      'headers': {
        'Authorization': `Bearer ${Deno.env.get('SUPABASE_SERVICE_ROLE_KEY') ?? ''}`
      },
    }
  },
)

async function getEmbeddingFromContent(content: string): Promise<number[]> {
  const embeddingServiceUrl = `${Deno.env.get('SUPABASE_URL')}/functions/v1/vector/embedding`;

  const response = await fetch(embeddingServiceUrl, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    body: JSON.stringify({ content }),
  });

  if (!response.ok) {
    throw new Error('Error generating embedding');
  }

  const data = await response.json();
  return data.data; // Giả sử API trả về { embedding: [768 float values] }
}

app.delete('/documents/:id',
  jwtMiddleware,
  adminRequiredMiddleware,
  async (req, res) => {
    const { id } = req.params;

    try {
      const { data, error } = await supabase
        .from('documents')
        .delete()
        .match({ id });

      if (error) {
        return res.status(400).json({ error: error.message });
      }

      res.status(200).json({ data: data, message: 'Document deleted successfully' });
    } catch (error) {
      res.status(500).json({ error: error.message });
    }
  });

app.get('/documents/:id',
  jwtMiddleware,
  adminRequiredMiddleware,
  async (req, res) => {
    const { id } = req.params;

    try {
      const { data, error } = await supabase
        .from('documents')
        .select('*')
        .match({ id });

      if (error) {
        return res.status(400).json({ error: error.message });
      }

      res.status(200).json({ data: data });
    } catch (error) {
      res.status(500).json({ error: error.message });
    }
  })

// Update an existing document
app.put('/documents/:id',
  jwtMiddleware,
  adminRequiredMiddleware,
  async (req, res) => {
    const { id } = req.params;
    const { visibility, category, title, content } = req.body;

    const cleanedContent = cleanText(content);
    const cleanedTitle = cleanText(title);

    const combinedText = `${cleanedTitle} ${cleanedContent}`;
    try {
      // Get the embedding from the combined text
      const embedding = await getEmbeddingFromContent(combinedText);

      // Update the document in Supabase
      const { data, error } = await supabase
        .from('documents')
        .update({ visibility, category, title, content, embedding })
        .match({ id }).select();

      if (error) {
        return res.status(400).json({ error: error.message });
      }

      res.status(200).json({ data: data, message: 'Document updated successfully' });
    } catch (error) {
      res.status(500).json({ error: error.message });
    }
  });

// Thêm tài liệu mới
app.post('/documents/add',

  jwtMiddleware,
  adminRequiredMiddleware,
  async (req, res) => {
    const { visibility, category, title, content } = req.body;

    const cleanedContent = cleanText(content);
    const cleanedTitle = cleanText(title);

    const combinedText = `${cleanedTitle} ${cleanedContent}`;

    try {
      // Lấy embedding từ content
      const embedding = await getEmbeddingFromContent(combinedText);

      // Lưu tài liệu vào Supabase
      const { data, error } = await supabase
        .from('documents')
        .insert([
          { visibility, category, title, content, embedding },
        ]).select();

      if (error) {
        return res.status(400).json({ error: error.message });
      }

      res.status(201).json({ data: data, message: 'Document added successfully' });
    } catch (error) {
      res.status(500).json({ error: error.message });
    }
  });
app.post('/documents/search',
  jwtMiddleware,
  adminRequiredMiddleware,
  async (req, res) => {
    const { query, number: limit_count } = req.body;

    try {
      // Clean the query to remove unwanted characters (HTML tags, etc.)
      const cleanedQuery = cleanText(query);

      // Get the embedding for the query text (vector search)
      const search_vector = await getEmbeddingFromContent(cleanedQuery);

      // Perform vector-based search in Supabase
      let { data, error } = await supabase
        .rpc('search_doc_by_vector', {
          search_vector,
          limit_count
        })

      if (error) {
        return res.status(400).json({ error: error.message });
      }
      res.status(200).json({ data: data });
    } catch (error) {
      res.status(500).json({ error: error.message });
    }
  });

app.listen(port, () => {
  console.log(`I'm healthy now 🌱 ${port}`)
})