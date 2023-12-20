#PowerShell includes many kind of commands: alias, cmdlets, function and application. 
#Create a script that counts how many application PowerShell returns.
$number = (Get-AppxPackage).Count
Write-Host "$number"