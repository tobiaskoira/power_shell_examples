#!/bin/bash
<<Exercise
Create a script that installs the program using apt, based on the user input. (cowsay etc.)
If the installation is successfull, tell that to the user and exit normally.
If not, inform user and exit with a code 111.
Hints: sudo permissions and apt options
Exercise
read -p "give the application name to install: " application
apt-cache search ${application}

if [ ${?} -ne 0 ]
then
  echo "cannot install: ${application}"
  exit 111
else
    echo " ${application} is succsefully installed"
fi

exit 0