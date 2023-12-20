#Create a script that ask workstation names from an user. 
#The names are asked until the user gives empty input. After that, 
#the script writes all names to a file in user's home folder.
#The file name is given with the parameter: filename
function userName2{
  Param($filename)
  $Serverlist = @()
  $UserName = $Null
do {

$UserName = [string](Read-Host "What's your username?")
if ($UserName -ne "") {
  $Serverlist  += $UserName
  
  
  
}

}
until ($UserName -eq "")
#the end


Write-Output $filename was created succesfully
$file = Join-Path $HOME -ChildPath $filename
$Serverlist | Add-Content $file
notepad $file
}
userName2 -filename petachundel.txt