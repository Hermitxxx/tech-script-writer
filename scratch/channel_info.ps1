$web = Invoke-WebRequest -Uri "https://www.youtube.com/watch?v=LB_ischR2Qo" -UserAgent "Mozilla/5.0 (Windows NT 10.0; Win64; x64)" -UseBasicParsing
if ($web.Content -match '"ownerChannelName":"(.*?)"') {
    Write-Output "Channel: $($matches[1])"
}
if ($web.Content -match '"author":"(.*?)"') {
    Write-Output "Author: $($matches[1])"
}
# Also let's extract all text segments in the description or initial player response
if ($web.Content -match 'ytInitialPlayerResponse\s*=\s*(\{.*?\});<') {
    Write-Output "Found ytInitialPlayerResponse"
}
