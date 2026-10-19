#!/usr/bin/env bash
str="${1:-}"
if [[ -n "$str" ]]
then
echo One for "$str", one for me.
else
echo One for you, one for me.
fi