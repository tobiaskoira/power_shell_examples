#!/bin/bash
<<Exercise
Create a script that reads cars.csv file.
File that is read must be given at the script startup as a command line argument.
Script reads information from the file and prints the values to the user.
Output format:
--- Line 1 ---
Manufacturer: X
Model: X
Color: X
Year: X
--- Line 2 ---
Manufacturer: Y
Model: Y
Color: Y
Year: Y
Exercise
some_data=$1
sed 1d $1 | while IFS=',' read -r Manufacturer Model Year Color
do
  echo "Manufacturer: ${Manufacturer}"
  echo "Model: ${Model}"
  echo "Year: ${Year}"
  echo "Color: ${Color}"
  echo "///////"
done 