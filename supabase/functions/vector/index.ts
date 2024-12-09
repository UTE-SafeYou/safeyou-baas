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
import { GoogleGenerativeAI } from "npm:@google/generative-ai";
import express from 'npm:express@4.18.2';

const genAI = new GoogleGenerativeAI(Deno.env.get('GEMINI_API_KEY'));
const model = genAI.getGenerativeModel({ model: "text-embedding-004" });

async function generate_embedding(text) {
  const result = await model.embedContent(text);
  return result.embedding.values;
}

const app = express()
const port = 3000
app.use(express.json())

app.post('/vector/embedding', async (req, res) => {

  let { content } = req.body

  try {
    const data = await generate_embedding(content);
    res.json({ data })
  } catch (error) {
    res.status(500).json({ error: error.message })
  }
}
)

app.listen(port, () => {
  console.log(`I'm healthy now 🌱`);

  (async () => {
    const text = "Hello, world!";
    const result = await generate_embedding(text);
    console.log(result);
  })()
})