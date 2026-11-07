#!/bin/bash

# Function to generate the secret handshake
secret_handshake() {
    local num=$1
    local actions=()

    # Check each bit position from right to left
    (( num & 1 )) && actions+=("wink")
    (( num & 2 )) && actions+=("double blink")
    (( num & 4 )) && actions+=("close your eyes")
    (( num & 8 )) && actions+=("jump")

    # If the 5th bit (16) is set, reverse the order of operations
    if (( num & 16 )); then
        local reversed=()
        for (( i=${#actions[@]}-1; i>=0; i-- )); do
            reversed+=("${actions[i]}")
        done
        actions=("${reversed[@]}")
    fi

    # Join array elements with commas
    local IFS=", "
    echo "${actions[*]}"
}

# Example usage:
# Pass the number as an argument, e.g., ./handshake.sh 26
secret_handshake "$1"