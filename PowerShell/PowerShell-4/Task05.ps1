#Create a script that takes one parameter: foldername. 
#First check that the given folder exist, then write all names of files 
#in the folder to a text file named files.txt. Create the file to user's home folder. 
#If the folder does not exist, the script will show a message: 
#"Sorry, {foldername} does not exist."

function testing2 {
    Param($foldername)
    #$list = Get-ChildItem $foldername
    if(Test-Path $foldername -PathType Container)
    {
        $filepath = Join-Path $HOME -ChildPath "files.txt"
        New-Item -Path $filepath -ItemType File
        $files=Get-ChildItem $foldername
        $files | Add-Content $filepath
        
         } 
    else {Write-Host Sorry, $foldername does not exist.}
}
testing2 -foldername C:\Users\Omistaja\Desktop\jamk\english4