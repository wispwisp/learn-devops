#!/bin/bash

docker run --rm \
       -p 127.0.0.1:8080:80 \
       -p 127.0.0.1:50050:50050 \
       -p 127.0.0.1:9001:9001 \
       nginx-example

