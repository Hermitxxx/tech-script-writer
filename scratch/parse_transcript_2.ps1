$web = Invoke-WebRequest -Uri "https://www.youtube.com/watch?v=LB_ischR2Qo" -UserAgent "Mozilla/5.0 (Windows NT 10.0; Win64; x64)" -UseBasicParsing
if ($web.Content -match '"captionTracks":\[\{"baseUrl":"(.*?)"') {
    $rawUrl = $matches[1]
    $url = $rawUrl.Replace('\u0026', '&')
    Write-Output "URL: $url"
    $captions = Invoke-WebRequest -Uri $url -UserAgent "Mozilla/5.0 (Windows NT 10.0; Win64; x64)" -UseBasicParsing
    [regex]::Matches($captions.Content, '<text[^>]*>(.*?)</text>') | ForEach-Object {
        $decoded = [System.Net.WebUtility]::HtmlDecode($_.Groups[1].Value)
        Write-Output $decoded
    }
}
