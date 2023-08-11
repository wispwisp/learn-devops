#!/bin/bash

# Amount of arguments
if [ $# -eq 0 ]; then
    echo "Enter first arg"
    exit 1
fi

numbers=$(echo $1 | sed 's/[[:digit:]]//g')

# -z test is result is empty
if [ -z $numbers ]; then
    echo "Numbers"
else
    echo "Not numbers"
fi

