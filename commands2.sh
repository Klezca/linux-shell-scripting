#!/bin/bash

# Display the UID and username of the user executing this script.
# Display if the user is the root user or not.

# Display the UID
echo "Your UID is ${UID}"

# Display the username
# USER_NAME=`id -un` <- older systax
USER_NAME=$(id -un) 
# Alternative: USER_NAME=$(whoami)
echo "Your username is ${USER_NAME}"


# Display if the user is the root user or not
if [[ "${UID}" -eq 0 ]] # This statement translate to "If UID equal to 0"
then
    echo 'You are root'
else
    echo 'You are not root'
fi

# Getting info on the 
type -a [[ # Expected Output is [[ is a shell keyword
type -a whoami  # Expected Output is that whoami is a program located in a directory

help [[ # Display a description of the [[ command
man whoami # Display a manual with descriptions about the program