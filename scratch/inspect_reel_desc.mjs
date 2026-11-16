async function main() {
  const url = 'https://www.youtube.com/watch?v=84sRVyav9Rg';
  const res = await fetch(url, {
    headers: {
      'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'
    }
  });
  const html = await res.text();
  
  // Find shortDescription with proper escaping
  const idx = html.indexOf('"shortDescription":"');
  if (idx !== -1) {
    const endIdx = html.indexOf('","isCrawlable":', idx);
    console.log('FULL DESC:', html.substring(idx + 20, endIdx));
  }
}

main().catch(console.error);
