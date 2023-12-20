#!/bin/bash
<<Exercise
Create a script that reads superhero.json file.
Script prints hero names to the user who selects which heroes powers or secret identity he/she wants to see.
Script prints the desired values to the user.
Script will continue asking what to do until user gives some string to exit to script (exit perhaps?).
Hints:
any iterations structure
jq command
Exercise
data=$(< superhero.json)
OPTIONS="Start Exit"
select x in ${OPTIONS}
do
  if [ ${x} = "Exit" ]
  then
    break
  else
 echo ${data} | jq '.members.[].name'
 read -p "selects the heroes: " selectedHeroe
 	if [${selectedHeroe} = ]
 
  fi   
  
done