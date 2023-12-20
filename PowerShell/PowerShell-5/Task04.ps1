#Create a script that writes information of all the local users in a computer to a CSV-file. 
#The script has one parameter filename. 
#The information includes local users's 1) name 2) full name 3) SID and 4) lastlogon.
function LocalUserFile{
    param($filename)
    Get-LocalUser | Select-Object Name, Fullname, SID, Lastlogon | Export-Csv -Path $filename -Delimiter ';'
    notepad $filename
    

}
LocalUserFile -filename C:\repos\ttc2060\PowerShell\PowerShell-5\localusers.csv

