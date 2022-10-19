#!/bin/bash
echo "Input the cost price of the item"
read cp
echo "Input the selling price of the item"
read sp
if [ $sp -eq $cp ] 
then
echo "No profit or loss"  
fi
if [ $sp -gt $cp ]
then
profit=$((sp - cp)) 
echo "profit of $profit"
elif [ $cp -gt $sp ]
then
loss=$((cp - sp))
echo "loss of $loss"
fi