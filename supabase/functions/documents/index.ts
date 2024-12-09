// SafeYou
// Copyright (C) 2024  SafeYou

// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
import { createClient } from 'jsr:@supabase/supabase-js@2'
import express from 'npm:express@4.18.2'
import { cleanText } from './utils/text-processing.ts'

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

app.delete('/documents/:id', async (req, res) => {
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

app.get('/documents/:id', async (req, res) => {
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
app.put('/documents/:id', async (req, res) => {
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
app.post('/documents/add', async (req, res) => {
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
app.post('/documents/search', async (req, res) => {
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