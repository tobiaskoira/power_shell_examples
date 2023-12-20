#!/bin/bash
<<Exercise
Create a script that prints 3 random numbers on the terminal and also generates a syslog message with a correlating number for each random number.
Log message priority should be user.info.
Hints: Special variable $RANDOM
Exercise

function createRandom {
    
    for x in {1..3}
do
  logger -p user.info "random number is ${RANDOM}"
done
}
createRandom