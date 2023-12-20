#!/bin/bash
<<Exercise
Create a script that has a function called network_information that shows the following information:

ip address: 
hostname: 

Log the messages in the syslog with a custom tag "network-information".
Hints: Utilize arrays and ip or hostname commands with options
Exercise
  var1=$(hostname)
  var2=$(hostname -i)
function network_information {

    echo "ip address: $var2 hostname: $var1"
    logger -p user.info  -t "network-information"  "ip address: $var2 hostname: $var1"
   
}
network_information
