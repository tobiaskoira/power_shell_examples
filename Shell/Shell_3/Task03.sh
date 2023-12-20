#!/bin/bash
<<Exercise
Modify Task 2.
Create a script that prints a number of objects in a given directory to the user. 
The path is asked from the user.
Exercise
read -p "give a path: " path
function count_objects {
  
  local number=$(ls "$path" | wc -l)
  echo $number
}
count_objects