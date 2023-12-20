#In this task you have to create a new function called Add-MyEvent. 
#The function takes two parameter: Type and Message. 
#The type can be: Error, Warning, or Information. Message is a clear message. 
#Add the following functionality to the task 04 using your new function.
#- if the script can create a new CSV-file succesfully, 
#then it will add a Information message to the eventlog. - if the script cannot create a file succesfully, 
#then it adds a Error message to the eventlog.
#Before using your new function create a new source named "MyPowerShell" to the Evenlog for writing your events.

function Add-MyEvent {
    param($type,$message)
    if($type -eq "Information")
    {Write-EventLog –LogName Application –Source “MyPowerShell” –EntryType Information –EventID 1 
    –Message $message}
    else
    {Write-EventLog –LogName Application –Source “MyPowerShell” –EntryType Error –EventID 3  
    –Message "Error error"}
    
}
function LocalUserFile{
    param($filename)
    Get-LocalUser | Select-Object Name, Fullname, SID, Lastlogon | Export-Csv -Path $filename -Delimiter ';'
    notepad $filename
    Add-MyEvent -type Information -message File succesfully was created.
   

}

LocalUserFile -filename C:\repos\ttc2060\PowerShell\PowerShell-5\localusers.csv
