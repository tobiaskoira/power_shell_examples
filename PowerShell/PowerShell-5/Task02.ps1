#Create a script that opens all the given urls to a browser. 
#The script has one parameter filename. The parameter points to a text file where urls are. 
#Check first that the given file exist, then read all lines and open the urls in a browser. 
#If the given file does not exist, the script will show a error message.
function UrlsOpener{
    param($filename)
    try {
        Test-Path $filename -ErrorAction Stop
        $collection = Get-Content $filename
        foreach ($currentItemName in $collection) {
            Start-Process -FilePath Firefox -ArgumentList $currentItemName
            start-Sleep -Seconds 10
            Get-Process Firefox | Stop-Process
        }
    }
    catch {
        Write-Output "File does not exist"
    }

}

UrlsOpener -filename C:\repos\ttc2060\PowerShell\PowerShell-5\test.txt