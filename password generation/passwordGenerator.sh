#!/bin/bash

# This script generates a list of random passwords.

# Use random number of password
PASSWORD="${RANDOM}"

echo "${PASSWORD}${PASSWORD}${PASSWORD}"

# Use the current date/time as the password
PASSWORD=$(date +%s%N) # Use the "man date" command to see what %s and %N does
echo "${PASSWORD}"
