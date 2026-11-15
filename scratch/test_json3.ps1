$jsonStr = '{"baseUrl":"https://www.youtube.com/api/timedtext?v=LB_ischR2Qo\u0026ei=vFb5ao3DIOeo3LUPm4ia8AY\u0026caps=asr\u0026opi=112496729\u0026exp=xpe\u0026xoaf=5\u0026xowf=1\u0026hl=bn\u0026ip=0.0.0.0\u0026ipbits=0\u0026expire=1794750764\u0026sparams=ip,ipbits,expire,v,ei,caps,opi,exp,xoaf\u0026signature=5B633969D29798154E46491DD256E447E3C0EB5E.6F5BCA2F27E68EF9C60E415230209932698C8876\u0026key=yt8\u0026kind=asr\u0026lang=en"}'
$obj = ConvertFrom-Json $jsonStr
$url = $obj.baseUrl + "&fmt=json3"
Write-Output "URL: $url"
try {
    $sub = Invoke-RestMethod -Uri $url -UserAgent "Mozilla/5.0 (Windows NT 10.0; Win64; x64)"
    foreach ($event in $sub.events) {
        $segs = $event.segs | ForEach-Object { $_.utf8 }
        Write-Output ($segs -join "")
    }
} catch {
    Write-Output "Error: $($_.Exception.Message)"
}
