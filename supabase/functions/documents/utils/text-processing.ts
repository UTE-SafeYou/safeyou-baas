export const cleanText = (text: string): string => {
    // Remove HTML tags using a regex pattern
    text = text.replace(/<\/?[^>]+(>|$)/g, "");  // Remove HTML tags

    // Remove any image data (you can modify this to handle specific cases)
    text = text.replace(/<img[^>]*>/g, ''); // Remove <img> tags

    // Remove additional unwanted delimiters (e.g., newlines, extra spaces, etc.)
    text = text.replace(/\s+/g, ' ').trim(); // Remove multiple spaces, trim extra spaces

    // Convert text to lowercase for case-insensitive comparison
    text = text.toLowerCase();

    // Replace punctuation and special characters (you can customize this as needed)
    text = text.replace(/[.,!?;(){}[\]:"'`<>]/g, ''); // Remove punctuation marks

    // Normalize accented characters (if needed, e.g., "é" -> "e")
    // text = text.normalize("NFD").replace(/[\u0300-\u036f]/g, "");

    // You can add more custom cleaning steps as necessary

    return text;
}


interface DocumentResult {
    id: string;
    title: string;
    content: string;
    vector_score?: number;
    keyword_score?: number;
    total_score?: number;
}

export function rankResults(vectorResults: DocumentResult[], keywordResults: DocumentResult[]): DocumentResult[] {
    const combinedResults: DocumentResult[] = [];

    // Rank based on vector score (if available) and keyword frequency
    const resultsMap = new Map<string, DocumentResult>();

    vectorResults.forEach((doc) => {
        resultsMap.set(doc.id, { ...doc, vector_score: doc.vector_score || 1 });
    });

    keywordResults.forEach((doc) => {
        if (resultsMap.has(doc.id)) {
            resultsMap.get(doc.id)!.keyword_score = doc.keyword_score || 0;
        } else {
            resultsMap.set(doc.id, { ...doc, keyword_score: doc.keyword_score || 0 });
        }
    });

    // Combine results based on score, for example, weighted sum of vector_score and keyword_score
    resultsMap.forEach((doc) => {
        doc.total_score = (doc.vector_score || 0) * 0.7 + (doc.keyword_score || 0) * 0.3; // Adjust weights as needed
        combinedResults.push(doc);
    });

    // Sort the combined results based on the total score
    combinedResults.sort((a, b) => (b.total_score || 0) - (a.total_score || 0));

    return combinedResults;
}
