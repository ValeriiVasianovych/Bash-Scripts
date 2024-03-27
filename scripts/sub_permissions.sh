#!/bin/bash

for dir in $(find $folder -type d); do
	if [[ $(basename $dir) == "sharefolder" ]]; then
		chmod g+s $dir 
		continue
	fi
	chmod +t $dir 
done