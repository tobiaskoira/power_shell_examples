#Create a function named Get-FiluInfo2 that shows Name, Length, 
#LastWriteTime properties of files with given extension in user's home folder. 
#The extension is like .txt or .csv, and it has been given as a parameter. 
function Get-FiluInfo2{
    Param($extension)

    Get-ChildItem $HOME -Include *$extension | Select-Object Name, Length, LastWriteTime | 
    
    Format-Table Name, Length, LastWriteTime
}
Get-FiluInfo2 -.csv