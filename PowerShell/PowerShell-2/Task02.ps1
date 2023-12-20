#Create a script that counts how many files and folders are in given folder. 
#The script shows the name of the folder and the number of the files.
$text =  Get-ChildItem | Measure-Object
$folder =Split-Path -Path (Get-Location) -Leaf
Write-Host Given holder name is $folder and number of the files is $text.Count