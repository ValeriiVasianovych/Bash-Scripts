#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: $0 <path/to/file/directory>" >&2
  exit 1
fi

path=$1

if [ -e $path ]; then
  if [ -f $path ]; then
    echo "File $path exists"
  elif [ -d $path ]; then
    echo "Directory $path exists"
  else
	echo "Unknown file type $path"
  fi
else
  echo "File $path does not exist"
fi
  