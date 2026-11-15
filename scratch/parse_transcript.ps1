$captionUrl = "https://www.youtube.com/api/timedtext?v=LB_ischR2Qo&caps=asr&opi=112496729&exp=xpo,xwmhp,xpe&xoaf=5&xowf=1&xowatf=1&hl=bn&ip=0.0.0.0&ipbits=0&expire=1794750645&sparams=ip,ipbits,expire,v,ei,caps,opi,exp,xoaf&signature=6320E8578DE1F72C87DD64E6E81CCDA6709D814B.4EBF95C8FF56E51B15E3F1DBA4E2CE4C513AB502&key=yt8&kind=asr&lang=en"
try {
    $xml = Invoke-RestMethod -Uri $captionUrl
    Write-Output "Got XML:"
    foreach ($text in $xml.transcript.text) {
        Write-Output "$($text.start): $($text.'#text')"
    }
} catch {
    Write-Output "Error: $($_.Exception.Message)"
}
