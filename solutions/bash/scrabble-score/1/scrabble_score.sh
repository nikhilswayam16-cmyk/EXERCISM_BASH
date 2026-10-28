#!/usr/bin/env bash
declare -A score
score["d"]=2
score["g"]=2
score["b"]=3
score["c"]=3
score["m"]=3
score["p"]=3
score["f"]=4
score["h"]=4
score["v"]=4
score["w"]=4
score["y"]=4
score["k"]=5
score["j"]=8
score["x"]=8
score["q"]=10
score["z"]=10
str=$1
n=${#str}
if (( n == 0 )); then
    echo 0
    exit 0
fi
str=${str,,}
result=0
for ((i = 0; i < n; i++ )); do
    character=${str:i:1}
    if [[ -v score["$character"]  ]]; then
    ((result += score["$character"]))
    else
    ((result += 1))
    fi
done
echo $result