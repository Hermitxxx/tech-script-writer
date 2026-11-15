import https from 'node:https';

async function main() {
  const videoId = 'LB_ischR2Qo';
  const res = await fetch(`https://www.youtube.com/watch?v=${videoId}`, {
    headers: {
      'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36'
    }
  });
  const html = await res.text();
  
  const m = html.match(/"captionTracks":\[(.*?)\]/);
  if (!m) {
    console.log('No captionTracks found in html');
    return;
  }
  
  const tracks = JSON.parse(`[${m[1]}]`);
  console.log('Tracks found:', tracks.length);
  if (tracks.length > 0) {
    const track = tracks[0];
    console.log('Fetching track:', track.baseUrl);
    const subRes = await fetch(track.baseUrl);
    const subXml = await subRes.text();
    console.log('Sub XML length:', subXml.length);
    console.log(subXml.substring(0, 1000));
  }
}

main().catch(console.error);
