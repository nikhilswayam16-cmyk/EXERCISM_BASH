#!/usr/bin/env bash
total=1
if [[  "$1" == "total" ]]; then
    for (( i = 1; i <= 64; i++ )); do
        if (( i == 1 )); then
        total=1
        else
         total=$(bc <<< "2^$i - 1")
        fi
    done
echo "$total"
exit 0
fi
q=1
if (( "$1" <= 64 && "$1" >= 1 )); then
    for (( j = 1; j <= $1; j++ )); do
    if (( j == 1 )); then
    q=1
    else
    q=$(bc <<< "$q * 2" )
    fi
    done
echo "$q"
exit 0
else
echo "Error: invalid input"
exit 1
fi