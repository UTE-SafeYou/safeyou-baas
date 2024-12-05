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
  console.log(`I'm healthy now 🌱 ${Deno.env.get('GEMINI_API_KEY')}`);

  (async () => {
    const text = "Hello, world!";
    const result = await generate_embedding(text);
    console.log(result);
  })()
})