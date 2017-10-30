Write-Host "Start"
$url = $env:BITBUCKET_URL
$cred = $env:BITBUCKET_USER + ":" + $env:BITBUCKET_PASS
$enc_cred = [convert]::ToBase64String([System.Text.Encoding]::ASCII.GetBytes($cred))
$webclient = new-object System.Net.WebClient
$webclient.Headers.Add("Authorization","Basic $enc_cred")
$webclient.DownloadFile($url, $pwd + "\master.zip")
Write-Host "Complete"
