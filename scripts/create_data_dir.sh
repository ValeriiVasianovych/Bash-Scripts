#!/bin/bash

read -p "Provide path to new Directory: " path

path=$(eval echo "$path") 

function createDir {
    mkdir -p "$path"
    current_date=$(date +%Y-%m-%d)
    new_path="${path}_${current_date}"
    mv "$path" "$new_path"
}

if [ -z "$path" ]; then 
    echo "Path error"
else
    createDir
fi
