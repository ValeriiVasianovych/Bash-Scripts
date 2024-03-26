#!/bin/bash

str="$@"

function reverseWords {
    local words=($1)
    local reversed=""
    for (( i=${#words[@]}-1; i>=0; i-- )); do
        reversed="$reversed ${words[i]}"
    done
    echo "$reversed"
}

if [[ $# -eq 0 ]]; then
    echo "Enter some words"
else
    reversed=$(reverseWords "$str")
    echo "Reversed words sequence: $reversed"
fi
