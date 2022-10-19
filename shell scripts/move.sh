#!/bin/bash
declare -A arr
shopt -s globstar

mkdir dupes

for file in **; do
#check if file exists
  [[ -f "$file" ]] || continue
   
   
  read cksm _ < <(md5sum "$file")
  if ((arr[$cksm]++)); then 
    mv $file //path
  fi
done

