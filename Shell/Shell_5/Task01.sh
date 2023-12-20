#!/bin/bash
<<Exercise
Create a script that asks values from the user until user decides to end the script.
Given values are added to the end of file called animal.txt
Finally script prints every value from the file.
Exercise
OPTIONS="Start Exit"
select x in ${OPTIONS}
do
  if [ ${x} = "Exit" ]
  then
    break
  else
  read -p "give a value: " value
  echo "${value}" >> $HOME/animals.txt
  fi   
  
done 



variable1=$(< $HOME/animals.txt)
echo ${variable1}