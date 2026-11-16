async function main() {
  const url = 'https://www.youtube.com/watch?v=84sRVyav9Rg';
  const res = await fetch(url, {
    headers: {
      'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'
    }
  });
  const html = await res.text();
  const m = html.match(/"approxDurationMs":"(\d+)"/);
  console.log('Duration ms:', m ? m[1] : 'unknown');
}

main().catch(console.error);
