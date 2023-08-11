#!/bin/bash

func() {
    arg1=$1
    arg2=$2
    echo $arg1 "," $arg2
}

func "arg1str"
func
func "arg1str" "arg2str"

