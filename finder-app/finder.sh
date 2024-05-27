#!/bin/bash

# verify input args
if [ $# -ne 2 ]; then
  #echo "Invalid Number of args";
  exit 1;
fi

curr_dir=$(pwd)
filedir="$1"
searchstr="$2"
file_count=0
lines_count=0

# verify if $1 is valid folder
if [ ! -d $filedir ]; then
  #echo "$filedir is not a directory!";
  exit 1;
fi

# list files
file_count=$(find $filedir -type f -follow -print | wc -l)
lines_count=$(grep -rl $searchstr $filedir | wc -l)

echo "The number of files are $file_count and the number of matching lines are $lines_count"
