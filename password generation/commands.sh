#!/bin/bash

# This script demostrates how to 
# Add a string of special characters to the SPECIALCHAR variable
SPECIALCHAR='!@#$%^&*()_-=+'
echo "${SPECIALCHAR}"

# Use the fold command to wrap each characters into a new line
echo "${SPECIALCHAR}" | fold -w1 

# EXPECTED OUTPUT:
# !
# @
# #
# $
# %
# ^
# &
# *
# (
# )
# _
# -
# =
# +

# Use the shuf command to reorder each line randomly, then print the first character
echo "${SPECIALCHAR}" | fold -w1 | shuf | head -c1