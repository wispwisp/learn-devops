#!/bin/bash

docker run --rm \
       -p 127.0.0.1:8080:80 \
       -p 127.0.0.1:8443:443 \
       app-example

