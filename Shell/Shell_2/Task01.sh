#!/bin/bash
<<Exercise
Create a script that asks a file to remove from the user.
File is removed if it's a regular file and it's empty, otherwise some kind of error message is printed.
Exercise
read -p "give a filename: " filename

if [-e ${filename}] $$ [! -s ${filename}]
then
rm ${filename} 
    echo "file found and deleted"
else
    echo "file not found"   
fi    