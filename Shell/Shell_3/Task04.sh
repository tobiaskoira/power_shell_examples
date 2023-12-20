#!/bin/bash
<<Exercise
Modify Task 3.
User can give unlimited number of paths and given paths are saved in the array.
Function takes an array as an argument.
Hints:
read commands options might be useful or some kind of loop.
Exercise

function count_objects {
  
  echo "paths are: ${arr[@]}"
}

declare -a arr=()
while [ "$path" != "x" ]
do
read -p "give a path: " path    
arr+=("$path")
count_objects $path
done
