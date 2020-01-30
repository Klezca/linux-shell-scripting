#!/bin/bash

# This script displays various information to the screen

# Display 'Hello'
echo 'Hello'

# Assign a value to a variable
WORD='script'

# Display that value using the variable
echo "$WORD"

# Demonstrate that single quotes cause variables to not get expanded.
echo '$WORD'

# combine the variable with hard-coded text
echo "This is a shell $WORD"

# Display the contents of the variable using an alternative systax
echo "This is a shell ${WORD}"

# Append text to the variabe
echo "${WORD}ing is fun"

# Show how NOT to append text to variable.
# This doesn't work:
echo "$WORDing is fun"

# Creare a new variable
ENDING='ed'

# Combine the two variables.
echo "This is ${WORD}${ENDING}."