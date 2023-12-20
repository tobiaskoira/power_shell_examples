#Create a script that returns how many objects are in the given directory (do not include hidden files). 
#Directory path is asked from the user.
#!/bin/bash
#!/bin/bash
echo write the directory path
read path
ls $path | wc -l
$@
echo $@