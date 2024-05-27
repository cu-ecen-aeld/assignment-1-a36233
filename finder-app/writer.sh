#!/bin/bash

# verify input args
if [ $# -ne 2 ]; then
  exit 1;
fi

curr_dir=$(pwd)
writefile="$1"
writestr="$2"
file_count=0
lines_count=0
dir=$(dirname $writefile)
file=$(basename $writefile)

#force create dir
mkdir -p $dir

# create file and truncates it
: > $writefile

# write str to file
echo $writestr > $writefile
