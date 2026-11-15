$url = "https://www.youtube.com/watch?v=LB_ischR2Qo"
try {
    $web = Invoke-WebRequest -Uri $url -UserAgent "Mozilla/5.0 (Windows NT 10.0; Win64; x64)" -UseBasicParsing
    $content = $web.Content
    if ($content -match '<title>(.*?)</title>') {
        Write-Output "TITLE: $($matches[1])"
    }
    # Look for video description or chapter markers or captions
    [regex]::Matches($content, '"shortDescription":"(.*?)"') | ForEach-Object {
        Write-Output "SHORT_DESC: $($_.Groups[1].Value)"
    }
} catch {
    Write-Output "ERROR: $($_.Exception.Message)"
}
