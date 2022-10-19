#!/bin/bash
echo "Enter the number"
read n
if [ $((n%2)) -eq 0 ]
then
echo "$n is even"
exit
fi
echo "$n is odd"