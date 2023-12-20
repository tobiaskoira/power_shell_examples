#Create a script that takes one parameter: foldername. 
#Check if the given folder exist. If it exist, first show how many files 
#are in the folder and then list filenames. 
#If the folder does not exist, the script will show a message: "Sorry, {foldername} does not exist.".
function testing {
    Param($foldername)
    $list = Get-ChildItem $foldername
    if(Test-Path $foldername -PathType Container)
    {Write-Host There are (Get-ChildItem $foldername| Measure-Object).Count files in this folder and they are
        foreach($file in $list)
    {$file.Name}
         } 
    else {Write-Host Sorry, $foldername does not exist.}
}
testing -foldername C:\Users\Omistaja\Desktop\jamk
