#!/bin/bash

number=$1

function showMultipleTable {
	for (( i=1; i<=10; i++ )); do
		echo "$number x $i = $((number * i))" 
	done
}

if [[ $# -eq 1 && ($number =~ ^[0-9]+$) ]]; then
	showMultipleTable "$number"
else
	echo "Error enter number argument"
fi