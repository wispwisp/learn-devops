#!/bin/bash

len=$(echo -n $1 | wc -c)
if [ $len = 0 ] ; then
    echo "Enter string"
    exit 1
fi

invalids=$(echo $1 | sed -e 's/[a-zA-Z0-9]//g')
echo "Invalids:" $invalids

