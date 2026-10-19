#!/usr/bin/env bash
if [ $# -gt 0 ]
then 
str="$*"
else 
IFS= read -r str
fi
length=${#str}
for ((i = length; i >= 1; i--))
do 
j=$((i-1))
printf '%s' "${str:j:1}"
done
printf '\n'