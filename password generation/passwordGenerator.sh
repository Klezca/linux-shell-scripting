#!/bin/bash

# This script generates a list of random passwords.

# Use random number of password
PASSWORD="${RANDOM}"
echo "${PASSWORD}${PASSWORD}${PASSWORD}"

# Use the current date/time as the password
PASSWORD=$(date +%s%N) # Use the "man date" command to see what %s and %N does
echo "${PASSWORD}"

# Better password using the first 20 characters of a 256 hash of the the current date/time
PASSWORD=$(date +%S%N | sha256sum | head -c20)
echo "${PASSWORD}"

# Adding some randoms number to the above before hashing
PASSWORD=$(date +%S%N${RANDOM} | sha256sum | head -c20)
echo "${PASSWORD}"

# Append a random special character to the password 
SPECIALCHAR=${echo '!@#$%^&*()_-=+' | fold -w1 | shuf | head -c1}
echo "${PASSWORD}${SPECIALCHAR}"