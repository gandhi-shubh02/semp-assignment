#!/bin/bash
echo "enter the two oprands"
read n1
read n2
echo "enter the option"
echo "1.add"
echo "2.subtract"
echo "3.divide"
echo "4.multiply"
read choice
if [ $choice -eq 1 ]
then 
res=`expr "$n1 + $n2 "|bc`
echo "answer is $res"
exit
fi

if [ $choice -eq 2 ]
then 
res=`expr "$n1 - $n2 "|bc`
echo "answer is $res"
exit
fi

if [ $choice -eq 3 ]
then 
res=`expr "$n1 / $n2 "|bc`
echo "answer is $res"
exit
fi

if [ $choice -eq 4 ]
then 
res=`expr "$n1 * $n2 "|bc`
echo "answer is $res"
exit
fi
