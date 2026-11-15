$content = Get-Content "c:\HIRA SCRIPTS\scratch\fetch_yt.ps1" -Raw
# Let's extract captionTracks from the web response
$web = Invoke-WebRequest -Uri "https://www.youtube.com/watch?v=LB_ischR2Qo" -UserAgent "Mozilla/5.0 (Windows NT 10.0; Win64; x64)" -UseBasicParsing
if ($web.Content -match '"captionTracks":\[(.*?)\]') {
    Write-Output "CAPTION_TRACKS: $($matches[1])"
} else {
    Write-Output "No caption tracks found directly in initial HTML."
}
