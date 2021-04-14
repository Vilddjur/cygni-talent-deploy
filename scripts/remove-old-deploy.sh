#!/bin/bash
cd /opt/cygni
readarray -t files <<<$(ls | sort)

n=0

for file in "${files[@]}"; do
  if test $n -ge 5
  then
        rm -r $file
  fi  
  ((n++))
done

