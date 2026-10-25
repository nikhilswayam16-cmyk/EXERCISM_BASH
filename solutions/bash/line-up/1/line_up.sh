#!/usr/bin/env bash
 name=$1
 num=$2
 l=0
 lst=$((num%10))
 if (( num > 10   )); then
     ((l = num%100 ))
fi
 ur=""
 if (( lst == 1  &&  l != 11 )); then
     ur="st"
 elif (( lst == 2 && l != 12 )); then
    ur="nd"
    elif (( lst == 3  && l != 13 )); then
    ur="rd"
else 
    ur="th"
fi
 printf '%s, you are the %s%s customer we serve today. Thank you!' "$name" "$num" "$ur"