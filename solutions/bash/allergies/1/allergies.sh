#!/usr/bin/env bash
score=$1
operation=$2
test=$3
allergen=(eggs peanuts shellfish strawberries tomatoes chocolate pollen cats)
if [[ "$operation" == "allergic_to" ]]; then
        for (( i = 0; i < 8; i++ )); do
        if [[ "$test" == "${allergen[i]}" ]]; then
        if (( (score >> i) & 1 )); then
        echo "true"
        else
        echo "false"
        fi
        fi
        done
        exit 0
fi
result=()
if [[ "$operation" == "list" ]]; then
for (( j = 0; j < 8; j++ )); do
    if(( (score >> j) & 1 )); then
    result+=("${allergen[j]}")
    fi
    done
fi
echo "${result[*]}"