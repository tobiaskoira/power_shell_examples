#Create a script that copies the given file to a path provided by the user. 
#So both paths should be asked from the user.
#Finally script prints: "copied the "original file" to "given path"!".
#!/bin/bash
echo write the filename
read filename
echo write the path
read path
cp $filename $path
echo "copied $filename to $path!"