<#
.SYNOPSIS
    Compiles video tutorial scripts into native Microsoft Word (.docx) files matching the exact styling of the SAAD SCRIPTS library.
.DESCRIPTION
    Generates a valid OpenXML .docx document using Aptos 14pt (sz=28), bold headings, one-action-per-line paragraphs,
    and standard margins. Accepts either a JSON configuration file or a plain text script.
.PARAMETER JsonPath
    Path to a JSON file containing the script definition:
    {
      "Title": "Document Title",
      "IntroLines": ["Question hook", "Cause context", "Launch transition"],
      "Sections": [
        {
          "Heading": "SOLUTION 1: ...",
          "Steps": ["First, ...", "Then, ..."],
          "Bridge": "If the problem is still there..."
        }
      ],
      "OutroLines": ["Confirmation line", "Reassurance line", "Thanks for watching..."]
    }
.PARAMETER TextPath
    Path to a plain-text script where bold headings are marked with [BOLD], or start with SOLUTION, METHOD, or STEP.
.PARAMETER OutputPath
    Target .docx file path.
.EXAMPLE
    powershell -ExecutionPolicy Bypass -File generate_script_docx.ps1 -JsonPath "script.json" -OutputPath "output.docx"
#>

[CmdletBinding()]
param (
    [Parameter(Mandatory = $false)]
    [string]$JsonPath,

    [Parameter(Mandatory = $false)]
    [string]$TextPath,

    [Parameter(Mandatory = $true)]
    [string]$OutputPath
)

Add-Type -AssemblyName System.IO.Compression
Add-Type -AssemblyName System.IO.Compression.FileSystem

$IntroLines = @()
$Sections = @()
$OutroLines = @()

if ($JsonPath -and (Test-Path $JsonPath)) {
    $rawJson = Get-Content -Path $JsonPath -Raw -Encoding UTF8 | ConvertFrom-Json
    if ($rawJson.IntroLines) { $IntroLines = @($rawJson.IntroLines) }
    if ($rawJson.Sections) {
        foreach ($sec in $rawJson.Sections) {
            $Sections += @{
                Heading = $sec.Heading
                Steps = @($sec.Steps)
                Bridge = if ($sec.Bridge) { $sec.Bridge } else { "" }
            }
        }
    }
    if ($rawJson.OutroLines) { $OutroLines = @($rawJson.OutroLines) }
}
elseif ($TextPath -and (Test-Path $TextPath)) {
    $lines = Get-Content -Path $TextPath -Encoding UTF8 | Where-Object { $_.Trim().Length -gt 0 }
    
    $currentSection = $null
    $inOutro = $false
    $firstHeadingSeen = $false

    foreach ($line in $lines) {
        $trimmed = $line.Trim()
        
        $isHeading = $trimmed -match '^(SOLUTION|METHOD|STEP|\d+\.)\s*\d*' -or $trimmed.StartsWith('[BOLD]')
        if ($trimmed.StartsWith('[BOLD]')) {
            $trimmed = $trimmed.Substring(6).Trim()
            $isHeading = $true
        }

        if ($isHeading) {
            $firstHeadingSeen = $true
            if ($currentSection) {
                $Sections += $currentSection
            }
            $currentSection = @{
                Heading = $trimmed
                Steps = @()
                Bridge = ""
            }
            continue
        }

        if (-not $firstHeadingSeen) {
            $IntroLines += $trimmed
            continue
        }

        # Check if line looks like an outro
        if ($trimmed -match '^(And that''s|That''s how|That should resolve|Hopefully|Thanks for watching|Give this video|If this guide|See you in)' -or $inOutro) {
            $inOutro = $true
            $OutroLines += $trimmed
            continue
        }

        # Check if line looks like an inter-solution bridge
        if ($trimmed -match '^If\b.*(still|doesn''t|fails|move on|try|another|let''s)' -and -not $inOutro) {
            if ($currentSection) {
                $currentSection.Bridge = $trimmed
            } else {
                $IntroLines += $trimmed
            }
            continue
        }

        # Normal step line
        if ($currentSection) {
            $currentSection.Steps += $trimmed
        } else {
            $IntroLines += $trimmed
        }
    }

    if ($currentSection) {
        $Sections += $currentSection
    }
}
else {
    Write-Error "Either -JsonPath or -TextPath must be provided and point to a valid file."
    exit 1
}

$OutputPath = $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath($OutputPath)

$parentDir = Split-Path $OutputPath -Parent
if ($parentDir -and -not (Test-Path $parentDir)) {
    New-Item -ItemType Directory -Path $parentDir -Force | Out-Null
}
if (Test-Path $OutputPath) {
    Remove-Item $OutputPath -Force
}

$xmlParagraphs = New-Object System.Text.StringBuilder

$appendParagraph = {
    param([string]$text, [bool]$bold = $false, [int]$sz = 28, [bool]$isBullet = $false)
    if ([string]::IsNullOrWhiteSpace($text)) { return }

    $trimmed = $text.Trim()
    $indTag = if ($isBullet -or $trimmed.StartsWith("•") -or $trimmed.StartsWith("-")) {
        '<w:ind w:left="720"/>'
    } else { "" }

    $pPrTags = if ($bold) { "<w:b/><w:bCs/>" } else { "" }

    $runsXml = New-Object System.Text.StringBuilder
    if ($bold) {
        $clean = $text -replace '\*\*', ''
        $escaped = [System.Security.SecurityElement]::Escape($clean)
        $null = $runsXml.Append(@"
  <w:r>
    <w:rPr>
      <w:rFonts w:ascii="Aptos" w:hAnsi="Aptos" w:cs="Aptos"/>
      <w:b/><w:bCs/>
      <w:sz w:val="$sz"/>
      <w:szCs w:val="$sz"/>
    </w:rPr>
    <w:t xml:space="preserve">$escaped</w:t>
  </w:r>
"@)
    } else {
        $parts = [regex]::Split($text, '(\*\*.*?\*\*|"[^"\r\n]{2,60}")')
        foreach ($part in $parts) {
            if ([string]::IsNullOrEmpty($part)) { continue }
            $isRunBold = $false
            $runText = $part
            if ($part.StartsWith("**") -and $part.EndsWith("**") -and $part.Length -ge 4) {
                $runText = $part.Substring(2, $part.Length - 4)
                $isRunBold = $true
            } elseif ($part.StartsWith('"') -and $part.EndsWith('"') -and $part.Length -ge 3) {
                $isRunBold = $true
            }
            $runBTags = if ($isRunBold) { "<w:b/><w:bCs/>" } else { "" }
            $escaped = [System.Security.SecurityElement]::Escape($runText)
            $null = $runsXml.Append(@"
  <w:r>
    <w:rPr>
      <w:rFonts w:ascii="Aptos" w:hAnsi="Aptos" w:cs="Aptos"/>
      $runBTags
      <w:sz w:val="$sz"/>
      <w:szCs w:val="$sz"/>
    </w:rPr>
    <w:t xml:space="preserve">$escaped</w:t>
  </w:r>
"@)
        }
    }

    $null = $xmlParagraphs.Append(@"
<w:p xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main">
  <w:pPr>
    $indTag
    <w:rPr>
      <w:rFonts w:ascii="Aptos" w:hAnsi="Aptos" w:cs="Aptos"/>
      $pPrTags
      <w:sz w:val="$sz"/>
      <w:szCs w:val="$sz"/>
    </w:rPr>
  </w:pPr>
$($runsXml.ToString())
</w:p>
"@)
}

# 1. Intro Paragraphs
foreach ($line in $IntroLines) {
    & $appendParagraph $line $false 28 $false
}

# 2. Section Headings, Steps, and Bridges
$appendStepsGroup = {
    param([array]$steps, [int]$sz = 28)
    if (-not $steps -or $steps.Count -eq 0) { return }

    $runsXml = New-Object System.Text.StringBuilder
    $stepIndex = 0

    foreach ($step in $steps) {
        $trimmed = $step.Trim()
        if ([string]::IsNullOrWhiteSpace($trimmed)) { continue }

        $parts = [regex]::Split($trimmed, '(\*\*.*?\*\*|"[^"\r\n]{2,60}")')
        $firstPart = $true

        foreach ($part in $parts) {
            if ([string]::IsNullOrEmpty($part)) { continue }
            $isRunBold = $false
            $runText = $part
            if ($part.StartsWith("**") -and $part.EndsWith("**") -and $part.Length -ge 4) {
                $runText = $part.Substring(2, $part.Length - 4)
                $isRunBold = $true
            } elseif ($part.StartsWith('"') -and $part.EndsWith('"') -and $part.Length -ge 3) {
                $isRunBold = $true
            }
            $runBTags = if ($isRunBold) { "<w:b/><w:bCs/>" } else { "" }
            $escaped = [System.Security.SecurityElement]::Escape($runText)

            $brTag = if ($stepIndex -gt 0 -and $firstPart) { "<w:br/>" } else { "" }

            $null = $runsXml.Append(@"
  <w:r>
    <w:rPr>
      <w:rFonts w:ascii="Aptos" w:hAnsi="Aptos" w:cs="Aptos"/>
      $runBTags
      <w:sz w:val="$sz"/>
      <w:szCs w:val="$sz"/>
    </w:rPr>
    $brTag<w:t xml:space="preserve">$escaped</w:t>
  </w:r>
"@)
            $firstPart = $false
        }
        $stepIndex++
    }

    $null = $xmlParagraphs.Append(@"
<w:p xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main">
  <w:pPr>
    <w:ind w:left="720"/>
    <w:rPr>
      <w:rFonts w:ascii="Aptos" w:hAnsi="Aptos" w:cs="Aptos"/>
      <w:sz w:val="$sz"/>
      <w:szCs w:val="$sz"/>
    </w:rPr>
  </w:pPr>
$($runsXml.ToString())
</w:p>
"@)
}

foreach ($sec in $Sections) {
    if ($sec.Heading) {
        & $appendParagraph $sec.Heading $true 28 $false
    }
    if ($sec.Steps -and $sec.Steps.Count -gt 0) {
        & $appendStepsGroup $sec.Steps 28
    }
    if ($sec.Bridge) {
        & $appendParagraph $sec.Bridge $false 28 $false
    }
}

# 3. Outro Paragraphs
foreach ($line in $OutroLines) {
    & $appendParagraph $line $false 28 $false
}

$templateFile = "c:\HIRA SCRIPTS\inspiration.docx"

if (Test-Path $templateFile) {
    [System.IO.File]::Copy($templateFile, $OutputPath, $true)

    $zipSrc = [System.IO.Compression.ZipFile]::OpenRead($templateFile)
    $entryDoc = $zipSrc.GetEntry("word/document.xml")
    $sr = New-Object System.IO.StreamReader($entryDoc.Open(), [System.Text.Encoding]::UTF8)
    $origXml = $sr.ReadToEnd()
    $sr.Close()
    $zipSrc.Dispose()

    $sectPrMatch = [regex]::Match($origXml, '(<w:sectPr.*?</w:sectPr>)', [System.Text.RegularExpressions.RegexOptions]::Singleline)
    $sectPrXml = if ($sectPrMatch.Success) { $sectPrMatch.Groups[1].Value } else {
        '<w:sectPr><w:pgSz w:w="12240" w:h="15840"/><w:pgMar w:top="1440" w:right="1440" w:bottom="1440" w:left="1440" w:header="720" w:footer="720" w:gutter="0"/></w:sectPr>'
    }

    $docOpenMatch = [regex]::Match($origXml, '(<w:document\b[^>]*>)')
    $docOpenTag = if ($docOpenMatch.Success) { $docOpenMatch.Groups[1].Value } else {
        '<w:document xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main">'
    }

    $docXml = @"
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
$docOpenTag
  <w:body>
    $($xmlParagraphs.ToString())
    $sectPrXml
  </w:body>
</w:document>
"@

    $zipDest = [System.IO.Compression.ZipFile]::Open($OutputPath, [System.IO.Compression.ZipArchiveMode]::Update)
    $docEntry = $zipDest.GetEntry("word/document.xml")
    $docEntry.Delete()

    $newEntry = $zipDest.CreateEntry("word/document.xml", [System.IO.Compression.CompressionLevel]::Optimal)
    $writer = New-Object System.IO.StreamWriter($newEntry.Open(), [System.Text.Encoding]::UTF8)
    $writer.Write($docXml)
    $writer.Flush()
    $writer.Close()
    $zipDest.Dispose()
} else {
    $docXml = @"
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<w:document xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main"
            xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships">
  <w:body>
    $($xmlParagraphs.ToString())
    <w:sectPr>
      <w:pgSz w:w="12240" w:h="15840"/>
      <w:pgMar w:top="1440" w:right="1440" w:bottom="1440" w:left="1440" w:header="720" w:footer="720" w:gutter="0"/>
    </w:sectPr>
  </w:body>
</w:document>
"@

    $contentTypesXml = @"
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Types xmlns="http://schemas.openxmlformats.org/package/2006/package-relationships+xml"
       xmlns:override="http://schemas.openxmlformats.org/package/2006/content-types">
  <Default Extension="rels" ContentType="application/vnd.openxmlformats-package.relationships+xml"/>
  <Default Extension="xml" ContentType="application/xml"/>
  <Override PartName="/word/document.xml" ContentType="application/vnd.openxmlformats-officedocument.wordprocessingml.document.main+xml"/>
</Types>
"@

    $relsXml = @"
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">
  <Relationship Id="rId1" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument" Target="word/document.xml"/>
</Relationships>
"@

    $zipStream = [System.IO.File]::Open($OutputPath, [System.IO.FileMode]::CreateNew)
    $zip = New-Object System.IO.Compression.ZipArchive($zipStream, [System.IO.Compression.ZipArchiveMode]::Create)

    $writeZipEntry = {
        param($entryPath, $content)
        $entry = $zip.CreateEntry($entryPath)
        $stream = $entry.Open()
        $writer = New-Object System.IO.StreamWriter($stream, [System.Text.Encoding]::UTF8)
        $writer.Write($content)
        $writer.Flush()
        $writer.Close()
        $stream.Close()
    }

    & $writeZipEntry "[Content_Types].xml" $contentTypesXml
    & $writeZipEntry "_rels/.rels" $relsXml
    & $writeZipEntry "word/document.xml" $docXml

    $zip.Dispose()
    $zipStream.Close()
}

[System.GC]::Collect()
[System.GC]::WaitForPendingFinalizers()

Write-Host "Successfully generated docx script: $OutputPath"
