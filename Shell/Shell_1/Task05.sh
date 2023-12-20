#Create a script that deletes the given files from the users home directory. 
#Files are passed to the script using a command line arguments (3 values).
#(Create a empty files in users home folder to test the functionality). 
#Finally script prints: i deleted the following files: x,y,z
#!/bin/bash
echo write the  first filename
read FirstFile
echo write the  second filename
read SecondFile
echo write the  third filename
read ThirdFile
rm $FirstFile $SecondFile $ThirdFile
echo "this script deleted the following files: 
$FirstFile 
$SecondFile
$ThirdFile
