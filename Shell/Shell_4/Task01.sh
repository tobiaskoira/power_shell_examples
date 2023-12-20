#!/bin/bash
<<Exercise
Create a script that asks URL from the user and a function that tries to ping it with a 1 package.
If ping is successfull, return a exit code 0.
If not, return a exit code 1.
Based on the exit code that the function returned, print outcome to user.
Exercise

read -p "give a url: " url

function pingUrl {
    ping ${url}
}
pingUrl

if [ ${?} -ne 0 ]
then
  echo "cannot ping to: ${url}"
  exit 1
fi

exit 0