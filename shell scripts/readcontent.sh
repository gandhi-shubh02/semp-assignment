#!/bin/bash

echo "Enter the filename"
read filename
while read -r line 
do
echo "$line"
done < "$filename" 