#!/usr/bin/env bash
year=$1
if [[ ! $1 =~ ^[0-9]+$ ]]; then
    printf "Usage: leap.sh <year>"
    exit 1
fi
if (( $# != 1 )); then
    printf "Usage: leap.sh <year>"
    exit 1
fi
if (( year <= 0 )); then
    printf "invalid"
    exit 1
fi
if (( year % 100 == 0 )); then
    if (( year % 400 == 0 )); then
    printf "true"
    else
    printf "false"
    fi
else
    if (( year % 4 == 0 )); then
    printf "true"
    else
    printf "false"
    fi
fi