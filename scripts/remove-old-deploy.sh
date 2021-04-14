#!/bin/bash
ssh github@139.177.182.150
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

