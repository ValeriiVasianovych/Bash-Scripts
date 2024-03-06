#!/bin/bash

function isEven { 
	if [ $(( $1 % 2)) -eq 0 ]; then
		echo "This is an even number"
	else
		echo "This is an odd number"
	fi
}

if [[ $# == 1 ]] && [[ $1 =~ ^[0-9]+$ ]]; then
   isEven "$1"
else
  echo "Usage: $0 <number>" >&2
  exit 1
fi
