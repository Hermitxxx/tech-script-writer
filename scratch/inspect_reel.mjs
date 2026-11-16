async function main() {
  const url = 'https://www.youtube.com/watch?v=84sRVyav9Rg';
  const res = await fetch(url, {
    headers: {
      'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'
    }
  });
  const html = await res.text();
  
  const title = html.match(/<title>(.*?)<\/title>/);
  console.log('Title:', title ? title[1] : 'none');
  
  const desc = html.match(/"shortDescription":"(.*?)"/);
  console.log('Desc:', desc ? desc[1] : 'none');
  
  const channel = html.match(/"ownerChannelName":"(.*?)"/);
  console.log('Channel:', channel ? channel[1] : 'none');
}

main().catch(console.error);
