#!/bin/bash
<<Exercise
Create a script that asks values from the user until user types exit. All the values are saved in array. 
Finally script prints out the whole array (line by line) using the following syntax: index: value.
Exercise

declare -a arr=()
while [ "$value" != "x" ]
do
read -p "give a value: " value    
arr+=("$value")

done
echo "values are: ${arr[@]}"

for i in "${!arr[@]}"
    do 
    echo "key: "$i" value: ${arr[i]}" 
    done

