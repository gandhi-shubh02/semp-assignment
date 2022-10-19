#!/bin/bash
echo "Enter the number you want the factorial for"
read n
fact=1
for ((i=1; i<=n; i++))
do
fact=$((fact*i))
done
echo "factorial is $fact"
