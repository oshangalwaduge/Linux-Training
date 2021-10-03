#!/bin/bash

SERVER="$1"

if [ -z $SERVER ]; then
  echo "Please enter the hostname."
  echo "$0 <hostname>"
fi

ansible ${SERVER} -i inventory -m hostname -a "name=LT-2021-016-${SERVER}"
