const { YoutubeTranscript } = require('youtube-transcript');

async function getTranscript() {
  try {
    const transcript = await YoutubeTranscript.fetchTranscript('LB_ischR2Qo');
    console.log('TRANSCRIPT:');
    transcript.forEach(item => {
      console.log(`[${Math.floor(item.offset / 1000)}s] ${item.text}`);
    });
  } catch (err) {
    console.error('FETCH ERROR:', err);
  }
}

getTranscript();
