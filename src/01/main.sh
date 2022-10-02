#!/bin/bash

print='^[A-Z a-z]+$'
if [[ -z "$2" && $1 =~ $print ]]
then
    echo "$1"
else
    echo "incorrect input"
fi
