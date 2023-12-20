#Create a script that creates new accounts for a placebo system 
#(placebo means here that the system not really exists). 
#The script takes one parameter filename. The parameter points to a csv file including user names. 
#Check first that the given file exist, then read all lines. 
#User's account is created by taking first four characters of lastname and two characters of firstname. 
#The account contains only lowercase letters. Give a message presented in the picture below. 
#If the given file does not exist, the script will show an error message.
function CreateAccounts{
    param($filename)
    try{
        Test-Path $filename -ErrorAction Stop
        $count =0
        Import-Csv $filename | ForEach-Object {
            
        $user=$_.Lastname.substring(0, 4) + $_.Firstname.substring(0, 2)
        Write-Host "Hello" $_.Firstname $_.Lastname, this is your new account: $user.ToLower()
        $count++

        
    }
    Write-Host $count new accounts created succesfully
    }
    catch{
        Write-Output "File does not exist"
    }
}
CreateAccounts -filename C:\repos\ttc2060\PowerShell\PowerShell-5\users2.csv