#!/bin/bash
echo "Enter filename"
read filename
echo "cat" >> "$filename"
echo "dog" >> "$filename"
echo "bear" >> "$filename"
echo "hello" >> "$filename"
echo "tiger" >> "$filename"
echo "hello" >> "$filename"
echo "horse" >> "$filename"
grep -v "hello" "$filename" > tmpfile && mv tmpfile "$filename"
while read -r line 
do
echo "$line"
done < "$filename" 
