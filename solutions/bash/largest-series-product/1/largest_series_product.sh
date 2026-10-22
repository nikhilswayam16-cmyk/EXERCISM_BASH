#!/usr/bin/env bash
num=$1
span=$2
if (( ${#num} < $span )); then
printf "span must not exceed string length"
exit 1
fi
if (( $# != 2 )); then
printf "invalid number of argumnts"
exit 1
fi
if [[ ! $num =~ ^[0-9]+$ ]]; then
    printf "digits input must only contain digits" >&2
    exit 1
fi
if (( span < 0 )); then
    printf 'span must not be negative'
    exit 1
fi
len=${#num}
s=$span
product=0
inter=1
for (( i = 0; i + s - 1 < len; i++ )); do
    for (( j = i; j <= i + s - 1; j++ )); do
    (( inter *= "${num:j:1}" ))
    done
    if ((  product < inter )); then
    product=$inter
    fi
    inter=1
done
printf "$product"
    

    