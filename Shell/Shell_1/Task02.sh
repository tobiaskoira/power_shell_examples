#Create a script that creates a new file in user's home directory.
#Script asks a new filename from the user and adds current date as an suffix to a filename (Y-M-D).
#!/bin/bash
echo write the filename
read filename

now=$(date +'%Y_%m_%d')
newfilename=$filename$now
startdir=$(pwd)
touch $stardir${newfilename}.txt
