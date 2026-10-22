#!/usr/bin/env bash
subject=("house that Jack built."
        "malt"
        "rat"
        "cat"
        "dog"
        "cow with the crumpled horn"
        "maiden all forlorn"
        "man all tattered and torn"
        "priest all shaven and shorn"
        "rooster that crowed in the morn"
        "farmer sowing his corn"
        "horse and the hound and the horn"
        )
antecedent=(
            ""
            "lay in"
            "ate"
            "killed"
            "worried"
            "tossed"
            "milked"
            "kissed"
            "married"
            "woke"
            "kept"
            "belonged to"
            )
start=$1
end=$2
if (( start <= 0)) || ((start > 12)) ||  ((end <= 0)) || ((end > 12))  || (( $# != 2  )) || [[ $start =~ "^[0-9]+$" && $end =~ "^[0-9]+$" ]]; then
echo "invalid input" >&2
exit 1
fi
for ((i = start; i <= end; i++ )); do
    printf 'This is the %s' "${subject[i-1]}"
    for (( j = i- 1; j > 0 ; j-- )); do
    printf ' that %s the %s' "${antecedent[j]}" "${subject[j-1]}"
    done
    printf '\n'
    done