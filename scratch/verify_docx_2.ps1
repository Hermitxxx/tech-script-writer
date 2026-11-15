Add-Type -AssemblyName System.IO.Compression
Add-Type -AssemblyName System.IO.Compression.FileSystem

$docx = "c:\HIRA SCRIPTS\How to Pause or Stop Windows 11 Automatic Updates.docx"
$zip = [System.IO.Compression.ZipFile]::OpenRead($docx)
$entry = $zip.GetEntry("word/document.xml")
$stream = $entry.Open()
$reader = New-Object System.IO.StreamReader($stream)
$xml = $reader.ReadToEnd()
$reader.Close()
$stream.Close()
$zip.Dispose()

[regex]::Matches($xml, '(?s)<w:p[ >].*?</w:p>') | ForEach-Object {
    $p = $_.Value
    $text = ([regex]::Matches($p, '<w:t[^>]*>(.*?)</w:t>') | ForEach-Object { $_.Groups[1].Value }) -join ''
    $isBullet = $p -match '<w:numPr>'
    $isH2 = $p -match 'Heading2'
    $tag = if ($isH2) { "[H2]" } elseif ($isBullet) { "  *" } else { "[P] " }
    Write-Output "$tag $text"
}
