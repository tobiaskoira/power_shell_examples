#Create a script that takes three parameters: foldername, filename and number. 
#Check first if the given folder, exists. If not, create the folder. 
#After that create as many new files as number says to the folder. 
#Finally return a report how many files has been created, and list the names of the files.
function test{
    Param($foldername, $filename, [int]$number)
    If(!(Test-Path $foldername)){
        
        New-Item -Path $foldername -ItemType Directory
        $a=1..$number
      
        $a.ForEach({ 
            $filepath = Join-Path -Path $foldername -ChildPath $_$filename
            New-Item  -Path $filepath -ItemType File })
       $filereport = Get-ChildItem $foldername | Measure-Object
       $list = Get-ChildItem $foldername
Write-Host There are $filereport.Count files in the folder   and they are 
foreach($file in $list) {$file.Name}

        } 
        
   }
test -foldername C:\Users\Omistaja\Desktop\jamk\english4 -filename dinchik.txt -number 3
#New-Item -Path $filepath 
#$filepath + $_ + $filename




