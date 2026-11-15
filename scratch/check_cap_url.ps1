$web = Invoke-WebRequest -Uri "https://www.youtube.com/watch?v=LB_ischR2Qo" -UserAgent "Mozilla/5.0 (Windows NT 10.0; Win64; x64)" -UseBasicParsing
if ($web.Content -match '"captionTracks":\[(.*?)\]') {
    Write-Output "Matched: $($matches[1])"
}
