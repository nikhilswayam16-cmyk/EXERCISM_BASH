#!/usr/bin/env bash
l1="${#1}"
l2="${#2}"
if ((  $# < 2 )); then
echo "Usage: hamming.sh <string1> <string2>"
exit 1
fi
s1=$1
s2=$2
if ((  l1 != l2  )); then
echo "strands must be of equal length"
exit 1
fi
count=0
for (( i =0; i < l1; i++  )); do
    if [[ "${s1:i:1}" != "${s2:i:1}" ]]; then
    (( count += 1 ))
    fi
    done
    echo "$count"
    