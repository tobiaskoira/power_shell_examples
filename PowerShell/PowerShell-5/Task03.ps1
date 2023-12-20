#Create a script that creates new localusers by a given csv-file. 
#The script has one parameter filename. Check first that the given file exist, 
#then read all lines and create a new local user account for every user in file. 
#The account name is created same way as in the task 01. 
#You can use in this script the parameter NoPassword Please remember: 
#you have to run this script with Administrator privileges that you can use the New-LocalUser cmdlet. 
#If the given file does not exist, the script gives a proper error message.
function LocalusersCreator{
    param($filename)
    try {
        Test-Path $filename -ErrorAction Stop
        $count=0
        Import-Csv $filename | ForEach-Object {
            $newuser=$_.Lastname.substring(0, 4) + $_.Firstname.substring(0, 2)
            
            $input = Read-Host A new local account $newuser.ToLower() will be created for $_.Firstname $_.Lastname, [Yes]/No:
            if ($input -eq "Y"){
                New-LocalUser -Name $newuser.ToLower() -NoPassword
                $count++
            }
            
        }
        Write-Host $count new accounts created succesfully
    }
    catch {
        Write-Output "File does not exist"
    }
}
LocalusersCreator -filename C:\repos\ttc2060\PowerShell\PowerShell-5\users.csv