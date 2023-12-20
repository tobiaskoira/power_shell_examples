#!/bin/bash
<<Exercise
Modify Exercise set 2, Task 5 (Create a script that mimics a simple calculator).
Change the logic that all operations are calculated by using functions 
Exercise
function plus {
    let result=number1+number2
    echo $result
}
function minus {
    let result=number1-number2
    echo $result
}
function multiply {
    let result=number1*number2
    echo $result
}
function divide {
    let result=number1/number2
    echo $result
}

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
  plus number1 number2
	
  elif [ ${x} = "Minus" ]
  then
  read -p "give a first number: " number1
	read -p "give a second number: " number2
   minus number1 number2
	
    elif [ ${x} = "Multiply" ]
  then
  read -p "give a first number: " number1
	read -p "give a second number: " number2
  multiply number1 number2
	
  else
  read -p "give a first number: " number1
  read -p "give a second number: " number2
  divide number1 number2
  
  fi  
  
done
echo "exiting..."