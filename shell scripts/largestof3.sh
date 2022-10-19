#!/bin/bash
echo "enter 3 numbers"
read n1
read n2
read n3
if  [ $n1 -gt $n2 ] && [ $n1 -gt $n3 ] 
then 
echo "$n1 is the greatest"
fi
if  [ $n2 -gt $n3 ] && [ $n2 -gt $n1 ] 
then 
echo "$n2 is the greatest"
fi
if  [ $n3 -gt $n2 ] && [ $n3 -gt $n1 ] 
then 
echo "$n3 is the greatest"
fi


