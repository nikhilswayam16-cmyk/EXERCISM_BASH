#!/usr/bin/env bash
num=$1
if [[ $num -lt 0 ]]; then
printf "false"
exit 0
fi
result=0
n=${#num}
temp=$num
while [[ $num -gt 0 ]]; do
digit=$((  num % 10  ))
(( result+= digit ** n )) 
(( num =  num/10  ))
done
if [[ $temp -eq $result  ]]; then
printf "true"
else
printf "false"
fi