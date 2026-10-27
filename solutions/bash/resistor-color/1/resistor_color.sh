#!/usr/bin/env bash
color=("black" "brown" "red" "orange" "yellow" "green" "blue" "violet" "grey" "white")
req=$1
w=$2
if [[ $req != "colors" ]]; then
    for i in "${!color[@]}"; do
    if [[ "${color[i]}" == "$w" ]]; then
    echo "$i"
    fi
    done
else
 for col in "${color[@]}"; do
 echo "$col"
 done
 fi