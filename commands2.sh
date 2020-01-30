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
    echo 'You are root' # The UID of a root user is ALWAYS equal to 0
else
    echo 'You are not root'
fi

# Getting info on the commands
type -a [[ # Expected Output: [[ is a shell keyword
type -a whoami  # Expected Output is that whoami is a program located in the file system
type -a test # Expected output: test is a shell builtin

help [[ # Display a description of the [[ command
man whoami # Display a manual with descriptions about the program
help test | less # Display the description of the test command and pipe it to a pager for easier readability

# The [ is one of the old systax for [[
type -a [ 
    # Expected Output: [[ is a shell builtin
    # Expected Output: [ is /usr/bin/[

ls -l /usr/bin/[ # Expected output: -rwxr-xr-x 1 root root 51384 Jan 18  2018 '/usr/bin/['

# [ is a shell builtin and a file in the file system that is executable