#!/usr/bin/env bash
secret_handshake() {
    local num=$1
    local actions=()
    ((num & 1)) && actions+=("wink")
    ((num & 2)) && actions+=("double blink")
    ((num & 4)) && actions+=("close your eyes")
    ((num & 8)) && actions+=("jump")
    if ((num & 16)); then
    local reversed=()
    for((i = ${#actions[@]} -1; i >= 0; i--)); do
        reversed+=("${actions[i]}")
        done
        actions=("${reversed[@]}")
    fi
    local IFS=", "
    echo "${actions[*]}"
}
secret_handshake "$1"