#!/bin/bash

# Display the UID and username of the user executing this script.
# Display if the user is the norman or not

# Display the UID.
echo "Your UID is ${UID}"

# Only display if the UID does NOT match 1000.
UID_TO_TEST_FOR='1000'
if [[ "${UID}" -lt "${UID_TO_TEST_FOR}" ]] # If UID is less than 1000
then
  echo "Your UID is less than ${UID_TO_TEST_FOR}."
  exit 1    # exit with a non-zero status
fi

# Display the username.
USER_NAME=$(id -un)

echo "Your username is ${USER_NAME}"