$web = Invoke-WebRequest -Uri "https://www.youtube.com/watch?v=LB_ischR2Qo" -UserAgent "Mozilla/5.0 (Windows NT 10.0; Win64; x64)" -UseBasicParsing
if ($web.Content -match '"captionTracks":\[\{"baseUrl":"(.*?)"') {
    $rawUrl = $matches[1]
    $url = $rawUrl.Replace('\u0026', '&')
    $captions = Invoke-WebRequest -Uri $url -UserAgent "Mozilla/5.0 (Windows NT 10.0; Win64; x64)" -UseBasicParsing
    Write-Output "Captions length: $($captions.Content.Length)"
    Write-Output $captions.Content.Substring(0, [Math]::Min(500, $captions.Content.Length))
}
