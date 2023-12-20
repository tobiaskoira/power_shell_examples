#Create a script that takes two parameters: foldername and newname. 
#Check first if the given folder, exists. If not, show a proper message and quit the script. 
#If the folder exist, count files in the folder, and ask from a user: 
#"All {number} files will be renamed with name {newname}. 
#Yes/No". If the user returns "Yes", rename all files in the folder.
function test{
    Param([string]$newname, [string]$foldername)

    If((Test-Path $foldername)){
        $number=(Get-ChildItem $foldername| Measure-Object).Count
        $input =Read-Host All $number files will be renamed with name $newname Yes or No
        
        if ($input -eq "Yes"){
            
            
            $list = Get-ChildItem $foldername
            $count =1
            foreach($file in $list) {
                $rename =[string]$count + $newname
                $filepath = Join-Path -Path $foldername -ChildPath $file
                
                Rename-Item -Path $filepath -NewName $rename
            $count++}
            
        }
        else {Write-Host thank you}
    }
    else{
        Write-Host file does not exist
    }

}
test -foldername C:\Users\Omistaja\Desktop\jamk\testing -newname petachundelmoy.txt