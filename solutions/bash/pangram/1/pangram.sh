#!/usr/bin/env bash
str=$1
l=${#str}
if (( l == 0 || l <= 25 )); then 
    echo "false"
    exit 0
fi
str=${str,,}
for letter in {a..z}; do
    if [[ "$str" != *"$letter"* ]]; then    
    echo "false"
    exit 0
    fi
done
echo "true"





