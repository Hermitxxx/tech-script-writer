param(
    [Parameter(Mandatory=$true)]
    [string]$OutputFile,
    
    [Parameter(Mandatory=$false)]
    [string]$InputFile = "",
    
    [Parameter(Mandatory=$false)]
    [string]$InputText = "",
    
    [string]$TemplatePath = ""
)

Add-Type -AssemblyName System.IO.Compression
Add-Type -AssemblyName System.IO.Compression.FileSystem

if (-not $TemplatePath) {
    $scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
    $TemplatePath = Join-Path $scriptDir "..\resources\template.docx"
    if (-not (Test-Path $TemplatePath)) {
        $TemplatePath = "C:\HIRA SCRIPTS\inspiration.docx"
    }
}

if ($InputFile -and (Test-Path $InputFile)) {
    $InputText = [System.IO.File]::ReadAllText($InputFile, [System.Text.Encoding]::UTF8)
}

$tempUnpack = Join-Path $env:TEMP ("docx_unpack_" + [System.Guid]::NewGuid().ToString("N"))
if (Test-Path $tempUnpack) { Remove-Item -Recurse -Force $tempUnpack }

$copyPath = Join-Path $env:TEMP ("template_copy_" + [System.Guid]::NewGuid().ToString("N") + ".docx")
$inStream = [System.IO.File]::Open($TemplatePath, [System.IO.FileMode]::Open, [System.IO.FileAccess]::Read, [System.IO.FileShare]::ReadWrite)
$outStream = [System.IO.File]::Create($copyPath)
$inStream.CopyTo($outStream)
$inStream.Close()
$outStream.Close()

[System.IO.Compression.ZipFile]::ExtractToDirectory($copyPath, $tempUnpack)
Remove-Item -Force $copyPath

$lines = $InputText -split "`r?`n"
$bodyXml = New-Object System.Text.StringBuilder

foreach ($rawLine in $lines) {
    $line = $rawLine.Trim()
    if (-not $line) { continue }
    
    # Check if this line is a Step / Solution heading
    if ($line -match '^(STEP|SOLUTION)\s+\d+:' -or ($line -cmatch '^[A-Z0-9\s:_-]{5,}$' -and $line -notmatch '[\.,\?!]$')) {
        $cleanHeading = [System.Security.SecurityElement]::Escape($line)
        $bodyXml.AppendLine(@"
  <w:p>
    <w:pPr><w:rPr><w:b/><w:bCs/><w:sz w:val="36"/><w:szCs w:val="36"/></w:rPr></w:pPr>
    <w:r><w:rPr><w:b/><w:bCs/><w:sz w:val="36"/><w:szCs w:val="36"/></w:rPr><w:t>$cleanHeading</w:t></w:r>
  </w:p>
"@) | Out-Null
    }
    # Check if this line is a bullet sub-step
    elseif ($line -match '^[•\*\-]|^\=\>\s*') {
        $cleanText = $line -replace '^[•\*\-\s]+|^\=\>\s*', ''
        $cleanText = [System.Security.SecurityElement]::Escape($cleanText)
        $cleanText = $cleanText -replace '--', '&#x2014;'
        $bodyXml.AppendLine(@"
  <w:p>
    <w:pPr><w:ind w:left="720"/><w:rPr><w:sz w:val="32"/><w:szCs w:val="32"/></w:rPr></w:pPr>
    <w:r><w:rPr><w:sz w:val="32"/><w:szCs w:val="32"/></w:rPr><w:t xml:space="preserve">&#x2022;  $cleanText</w:t></w:r>
  </w:p>
"@) | Out-Null
    }
    # Normal body paragraph
    else {
        $cleanText = [System.Security.SecurityElement]::Escape($line)
        $cleanText = $cleanText -replace '--', '&#x2014;'
        $bodyXml.AppendLine(@"
  <w:p>
    <w:pPr><w:rPr><w:sz w:val="32"/><w:szCs w:val="32"/></w:rPr></w:pPr>
    <w:r><w:rPr><w:sz w:val="32"/><w:szCs w:val="32"/></w:rPr><w:t>$cleanText</w:t></w:r>
  </w:p>
"@) | Out-Null
    }
}

$fullDocXml = @"
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<w:document xmlns:wpc="http://schemas.microsoft.com/office/word/2010/wordprocessingCanvas" xmlns:cx="http://schemas.microsoft.com/office/drawing/2014/chartex" xmlns:cx1="http://schemas.microsoft.com/office/drawing/2015/9/8/chartex" xmlns:cx2="http://schemas.microsoft.com/office/drawing/2015/10/21/chartex" xmlns:cx3="http://schemas.microsoft.com/office/drawing/2016/5/9/chartex" xmlns:cx4="http://schemas.microsoft.com/office/drawing/2016/5/10/chartex" xmlns:cx5="http://schemas.microsoft.com/office/drawing/2016/5/11/chartex" xmlns:cx6="http://schemas.microsoft.com/office/drawing/2016/5/12/chartex" xmlns:cx7="http://schemas.microsoft.com/office/drawing/2016/5/13/chartex" xmlns:cx8="http://schemas.microsoft.com/office/drawing/2016/5/14/chartex" xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006" xmlns:aink="http://schemas.microsoft.com/office/drawing/2016/ink" xmlns:am3d="http://schemas.microsoft.com/office/drawing/2017/model3d" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:oel="http://schemas.microsoft.com/office/2019/extlst" xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships" xmlns:m="http://schemas.openxmlformats.org/officeDocument/2006/math" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:wp14="http://schemas.microsoft.com/office/word/2010/wordprocessingDrawing" xmlns:wp="http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing" xmlns:w10="urn:schemas-microsoft-com:office:word" xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main" xmlns:w14="http://schemas.microsoft.com/office/word/2010/wordml" xmlns:w15="http://schemas.microsoft.com/office/word/2012/wordml" xmlns:w16cex="http://schemas.microsoft.com/office/word/2018/wordml/cex" xmlns:w16cid="http://schemas.microsoft.com/office/word/2016/wordml/cid" xmlns:w16="http://schemas.microsoft.com/office/word/2018/wordml" xmlns:w16du="http://schemas.microsoft.com/office/word/2023/wordml/word16du" xmlns:w16sdtdh="http://schemas.microsoft.com/office/word/2020/wordml/sdtdatahash" xmlns:w16sdtfl="http://schemas.microsoft.com/office/word/2024/wordml/sdtformatlock" xmlns:w16se="http://schemas.microsoft.com/office/word/2015/wordml/symex" xmlns:wpg="http://schemas.microsoft.com/office/word/2010/wordprocessingGroup" xmlns:wpi="http://schemas.microsoft.com/office/word/2010/wordprocessingInk" xmlns:wne="http://schemas.microsoft.com/office/word/2006/wordml" xmlns:wps="http://schemas.microsoft.com/office/word/2010/wordprocessingShape" mc:Ignorable="w14 w15 w16se w16cid w16 w16cex w16sdtdh w16sdtfl w16du wp14">
  <w:body>
$($bodyXml.ToString())
    <w:sectPr w:rsidR="00D472A5" w:rsidRPr="000B640D">
      <w:pgSz w:w="12240" w:h="15840"/>
      <w:pgMar w:top="1440" w:right="1440" w:bottom="1440" w:left="1440" w:header="720" w:footer="720" w:gutter="0"/>
      <w:cols w:space="720"/>
      <w:docGrid w:linePitch="360"/>
    </w:sectPr>
  </w:body>
</w:document>
"@

$utf8NoBom = New-Object System.Text.UTF8Encoding($false)
[System.IO.File]::WriteAllText("$tempUnpack\word\document.xml", $fullDocXml, $utf8NoBom)

if (Test-Path $OutputFile) {
    try {
        Remove-Item -Force $OutputFile -ErrorAction Stop
    } catch {
        Write-Warning "File $OutputFile is locked by Word or another process: $_"
    }
}

$zipStream = [System.IO.File]::Create($OutputFile)
$archive = New-Object System.IO.Compression.ZipArchive($zipStream, [System.IO.Compression.ZipArchiveMode]::Create)

$workDirFull = (Get-Item $tempUnpack).FullName
Get-ChildItem -Path $tempUnpack -Recurse | Where-Object { -not $_.PSIsContainer } | ForEach-Object {
    $rel = $_.FullName.Substring($workDirFull.Length).TrimStart("\", "/").Replace("\", "/")
    [System.IO.Compression.ZipFileExtensions]::CreateEntryFromFile($archive, $_.FullName, $rel)
}
$archive.Dispose()
$zipStream.Dispose()
Remove-Item -Recurse -Force $tempUnpack

Write-Output "Successfully generated: $OutputFile"