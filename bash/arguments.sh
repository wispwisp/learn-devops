#!/bin/bash

echo "Number of script arguments:" $#

for arg in $@
do
    echo "$arg"
done

echo "First arg:" "$1"
echo "Second arg:" $2

