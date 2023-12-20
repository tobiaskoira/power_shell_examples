#Create a script that writes current logged username and current date to console.
$date = Get-Date
Write-Host "Hello $env:UserName, today is $date"