#!/bin/bash

arr=(20 12 33 67 53 89 19)

function sortArr {
	sorted_arr=($(for num in "${arr[@]}"; do echo "$num"; done | sort -n))
	echo "${sorted_arr[@]}"
}

sorted=$(sortArr)
echo "Sorted array: $sorted"