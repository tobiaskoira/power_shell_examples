#!/bin/bash
<<Exercise
Create a script that mimics a simple calculator.
At first, script asks the operation from the user (-, +, *, / ). After the user selects operation,
 two values are asked and the outcome is printed to the user.
Script execution stops when the user selects "exit" operation.
Exercise


#PS3='Select: '
#this is optional, PS3 system variable is used to print out the wanted string when asking the number from the user, the default value is #?
OPTIONS="Plus Minus Multiply Divide Exit"
select x in ${OPTIONS}
do
  if [ ${x} = "Exit" ]
  then
    break
  elif [ ${x} = "Plus" ]
  then
  read -p "give a first number: " number1
	read -p "give a second number: " number2
  let result=number1+number2
	echo  $result 
  elif [ ${x} = "Minus" ]
  then
  read -p "give a first number: " number1
	read -p "give a second number: " number2
   let result=number1-number2
	echo $result
    elif [ ${x} = "Multiply" ]
  then
  read -p "give a first number: " number1
	read -p "give a second number: " number2
  let result=number1*number2
	echo $result
  else
  read -p "give a first number: " number1
  read -p "give a second number: " number2
  let result=number1/number2
  echo $result
  fi   
  
done
echo "exiting..."