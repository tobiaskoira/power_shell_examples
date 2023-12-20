#!/bin/bash
<<Exercise
Create a script to automate user creation. NOTE: no password setup!
Script asks username from the user and before the user is created, script must check if the user with that name exists.
Use the following syntax in you conditional statement: if id -u USERNAME. If the user doesn't exist, conditional statement returns false (actual id command returns "no such user" / error code 1).
New user must have home directory under the /home/ directory and default shell as bash.
Exercise