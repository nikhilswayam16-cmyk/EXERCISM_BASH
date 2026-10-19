#!/usr/bin/env bash
sum=0
squares=0
for (( i = 1; i <= $2; i++ )); do
    (( sum += i, squares += i*i   ))
    done
if [[ "$1" == "sum_of_squares" ]]; then
    echo $(( squares ))
elif [[ "$1" == "square_of_sum"    ]]; then
    echo $(( sum * sum  ))
else 
    echo $(( sum * sum - squares    ))
fi