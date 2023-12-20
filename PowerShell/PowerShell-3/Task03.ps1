#Create a script that takes two parameters: foldername and filename. 
#Check first if the given file is in the given folder. If the file exists, 
#show a proper message. If it does not exist, ask from a user "Create the file {filename}? Yes/No". 
#If the user returns "Yes", 
#create the file to the folder.
function testing{
    Param($foldername,$filename)
    $shortfoldername = Split-Path -Path ($foldername) -Leaf
    $shortfilename = Split-Path -Path $filename -Leaf
    if((Test-Path $foldername -PathType Container) -and (Test-Path $filename))

    {Write-Host $shortfilename already exists in the folder $shortfoldername  } 
    else {
        
        $input = Read-Host "This file does not exists, create the file $shortfilename?  
    [Y/n]".
    if ($input -eq "Y")
    {
               
        
        New-Item -Path $filename -ItemType File
        Write-Host "Created new file $filename"
     }
}
}

testing -foldername C:\Users\Omistaja\Desktop\jamk\english -filename C:\Users\Omistaja\Desktop\jamk\english\recordiioing.conf