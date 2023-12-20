#Create a script that takes two parameters: foldername and filename. 
#Check first if the given folder exist. If the folder exists, check if the file exists in the folder. 
#If true, show a proper message. 
#If it does not exist, show a message: "Sorry, {filename} in the {foldername} does not exist.".
function testing{
    Param($foldername,$filename)
   
    $shortfoldername = Split-Path -Path ($foldername) -Leaf
    $shortfilename = Split-Path -Path $filename -Leaf
    if((Test-Path $foldername -PathType Container) -and (Test-Path $filename))

    {Write-Host $shortfilename exists in the folder $shortfoldername  } 
    else {Write-Host Sorry,$shortfilename in the folder $shortfoldername does not exist.}
}
testing -foldername C:\Users\Omistaja\Desktop\jamk\english -filename C:\Users\Omistaja\Desktop\jamk\english\recording.conf