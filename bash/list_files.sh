#!/bin/bash

list_current_files() {
    # If path specified:
    len=$(echo -n $1 | wc -c)
    if [ len != 0 ] ; then
        # Use it.
        ourpath=$1
    else
        # Use current dir.
        ourpath="./"
    fi

    dirs=$(ls $ourpath)
    for directory in $dirs
    do
        echo "$directory"
    done
}

# use first arg of a script:
list_current_files $1

