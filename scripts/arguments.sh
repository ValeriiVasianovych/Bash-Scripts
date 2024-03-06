#!/bin/bash

numOne=$1
numTwo=$2

if [ $# -ne 2 ]; then
  echo "Usage: $0 <number1> <number2>" >&2
  exit 1
fi

if [[ $numOne =~ ^[0-9]+$ ]] && [[ $numTwo =~ ^[0-9]+$ ]]; then
  result=$((numOne + numTwo))
  echo "The sum of $numOne and $numTwo is $result"
else
  echo "Both arguments must be numbers"
  exit 1
fi


