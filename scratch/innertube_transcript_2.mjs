async function main() {
  const videoId = 'LB_ischR2Qo';
  const watchRes = await fetch(`https://www.youtube.com/watch?v=${videoId}`, {
    headers: {
      'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36'
    }
  });
  const html = await watchRes.text();
  const apiKeyMatch = html.match(/"INNERTUBE_API_KEY":"(.*?)"/);
  const contextMatch = html.match(/"INNERTUBE_CONTEXT":(\{.*?\})\s*,\s*"INNERTUBE/);
  const getTranscriptParams = html.match(/"getTranscriptEndpoint":\{"params":"(.*?)"\}/);
  
  if (apiKeyMatch && getTranscriptParams && contextMatch) {
    const rawContext = JSON.parse(contextMatch[1]);
    const params = decodeURIComponent(getTranscriptParams[1]);
    const res = await fetch(`https://www.youtube.com/youtubei/v1/get_transcript?key=${apiKeyMatch[1]}`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'
      },
      body: JSON.stringify({
        context: rawContext,
        params: params
      })
    });
    const data = await res.json();
    const initialSegments = data?.actions?.[0]?.updateEngagementPanelAction?.content?.transcriptRenderer?.content?.transcriptSearchPanelRenderer?.body?.transcriptSegmentListRenderer?.initialSegments;
    if (initialSegments) {
      for (const seg of initialSegments) {
        const text = seg.transcriptSegmentRenderer.snippet.runs.map(r => r.text).join('');
        const time = seg.transcriptSegmentRenderer.startTimeText.simpleText;
        console.log(`${time}: ${text}`);
      }
    } else {
      console.log('Error/Data:', JSON.stringify(data).substring(0, 500));
    }
  }
}

main().catch(console.error);
