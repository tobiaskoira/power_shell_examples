#Ask from user his/her firstname, lastname and groupcode. 
#Save them to variables. 
#After that show the following info to console.
$firstname= Read-Host "What is your name?"
$lastname= Read-Host "What is your lastname?"
$groupcode= Read-Host "What is your groupcode?"
Write-Host "Hello $firstname $lastname $groupcode"