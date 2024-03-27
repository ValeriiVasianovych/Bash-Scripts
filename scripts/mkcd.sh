#!/bin/bash

nameOfFolder="$1"

function createPath {
	mkdir -p -- "$1" && cd -- "$1" 
}

if [ $# -ne 1 ]; then
	echo "Provide name or tree for new directories"
else
	createPath "$nameOfFolder"
fi