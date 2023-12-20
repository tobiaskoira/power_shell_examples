#Create a script that ask file names from an user. 
#The names are asked until the user gives empty input. After that, 
#the script creates the files with given names to user's home folder. 
#The script writes the current date and time to the files in the following format 30.9.2021 12.30. 
#Finally show a message that how many files were created succesfully. 
function userName{
  
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
$count =0
foreach($file in $Serverlist){
  $filepath = Join-Path $HOME -ChildPath $file
  New-Item -Path $filepath -ItemType File
  $count++
}

Write-Output "$count Files were created succesfully"



}
userName 