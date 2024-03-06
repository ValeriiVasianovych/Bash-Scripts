#!/bin/bash

echo "### Select option ###"
read -r -p "Show Directories(1) or Files(2): " option
read -r -p "Exp.: /path/to/dir: " path

function getResult {
    local option=$1
    local path=$2

    if [[ $option == 1 ]]; then
        echo "### Showing Dirs ###"
        ls -l "$path" | grep "^d"
    else
        echo "### Showing Files ###"
        ls -l "$path" | grep "^-"
    fi
}

if [[ ($option == 1 || $option == 2) ]]; then
    if [ -d "$path" ]; then
        getResult "$option" "$path"
    else 
        echo "### Path $path doesn't exist or is not a directory. ###"
        exit 1
    fi
else 
    echo "### You should enter option to show only: ###" 
    echo "Directories (1)"
    echo "Files       (2)"
    exit 1
fi
