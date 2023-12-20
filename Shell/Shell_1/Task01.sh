#Create a script that takes two command line arguments.
#Script returns the following arithmetic solutions: addition, substraction, multiplication
#!/bin/bash
read -p "write first argument: " a
read  -p "write second argument: " b
let addition=a+b
let substraction=a-b
let multiplication=a*b
echo "addition=$addition, substraction=$substraction, multiplication=$multiplication"