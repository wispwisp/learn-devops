#!/bin/bash

mkdir ./ssl && \
openssl req -x509 -nodes \
        -days 365 \
        -newkey rsa:2048 \
        -keyout ./ssl/private.key \
        -out ./ssl/public.pem

