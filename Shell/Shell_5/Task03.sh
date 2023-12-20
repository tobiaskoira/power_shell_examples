#!/bin/bash
<<Exercise
Modify the task 2.
Script should have function that adds a new entry to the cars.csv file based on the user input.
Every value must be asked from the user separately and value/values added should be given to the function as an argument.
Hints:
Remember delimiters.
One string might be easier than multiple --> how you can combine multiple strings (concatenate)?
Exercise
some_data=$1
read -p "give a manufacturer: " manufacturer
read -p "give a model: " model
read -p "give a year: " year
read -p "give a color: " color

function dataEnter {
info="${manufacturer},${model},${year},${color}"

echo "${info}" >> ${some_data}

}

dataEnter

sed 1d $1 | while IFS=',' read -r Manufacturer Model Year Color
do
  echo "Manufacturer: ${Manufacturer}"
  echo "Model: ${Model}"
  echo "Year: ${Year}"
  echo "Color: ${Color}"
  echo "///////"
done  