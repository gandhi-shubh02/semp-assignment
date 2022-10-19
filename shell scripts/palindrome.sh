#!/bin/bash
echo "Input the string"
read word
temp=$(rev<<<"${word}")
echo "$temp"
if [[ "$temp" == "$word" ]]
then 
echo "Palindrome"
exit
fi
echo "Not Palindrome"

