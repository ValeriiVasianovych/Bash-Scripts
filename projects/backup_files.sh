#!/bin/bash

function copyFunc {
	local sourceDir="$1"
	local destDir="$2"

	ls -al "$sourceDir" | awk '{print $1, $9, $10, $11}'
	cp -R "$sourceDir"/* "$destDir"
	echo "All files was succesfully copied to $destDir"
}

function pathCheck {
	if [ ! -e "$1" ]; then
		echo "Error: SourceDir does not exist"
		exit 1
	elif [ ! -d "$2" ]; then
		echo "Destination folder does not exist."
		echo "Creating..."
		mkdir -p -- "$2"
		copyFunc "$1" "$2"
	else
		echo "Copying all from $1 to $2"
		copyFunc "$1" "$2"
	fi
}

if [ $# -ne 2 ]; then
	echo "Usage: $0 sourceDir destDir"
else 
	pathCheck "$1" "$2"
fi