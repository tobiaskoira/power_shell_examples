#Create a script that counts how many files are in user's home folder. 
#The script shows the home folder name and the number of the files.
$text =  Get-ChildItem $HOME | Measure-Object
$folder =Split-Path -Path ($HOME) -Leaf
Write-Host Home folder name is $folder and number of the files is $text.Count