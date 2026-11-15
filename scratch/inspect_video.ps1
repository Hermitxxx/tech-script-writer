$web = Invoke-WebRequest -Uri "https://www.youtube.com/watch?v=LB_ischR2Qo" -UserAgent "Mozilla/5.0 (Windows NT 10.0; Win64; x64)" -UseBasicParsing
$text = $web.Content
if ($text -match '"approxDurationMs":"(\d+)"') {
    Write-Output "Duration Ms: $($matches[1])"
}
# Find all text strings in ytInitialData
if ($text -match 'ytInitialData\s*=\s*(\{.*?\});<') {
    Write-Output "Found ytInitialData"
}
# Let's search for keywords like services.msc, regedit, gpedit in the page source
$keywords = @("services", "pause", "gpedit", "regedit", "metered", "troubleshoot", "startup type")
foreach ($k in $keywords) {
    if ($text -match [regex]::Escape($k)) {
        Write-Output "Matched keyword: $k"
    }
}
