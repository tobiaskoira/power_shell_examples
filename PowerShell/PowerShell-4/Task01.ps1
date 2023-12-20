#Create a function named Get-FiluInfo that shows Name and 
#Length properties of all files in user's home folder. 
#Run the function to prove that it works.
function Get-FiluInfo{
    Get-ChildItem $HOME | Select-Object Name, Length | Format-Table Name, Length
}
Get-FiluInfo