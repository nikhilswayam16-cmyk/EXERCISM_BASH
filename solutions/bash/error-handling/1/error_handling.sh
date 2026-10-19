#!/usr/bin/env bash
name="$1"
num=$#
if [[ $num -ne 1  ]]; then
    echo "Usage: error_handling.sh <person>"
    exit 1
else 
    echo "Hello, ${name}"
fi