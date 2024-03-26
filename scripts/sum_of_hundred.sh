#!/bin/bash

counter=0
for ((i=0; i<=100; i++)); do
	counter=$((counter + i))
done
echo "Sum of hundred is: $counter" 