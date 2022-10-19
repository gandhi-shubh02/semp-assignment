#!/bin/bash
count=0
i=0
while [ $count -lt 10 ]
do
year=`expr "2000 + $i "|bc`
mod=`expr "$year % 4"|bc`
if [ $mod -eq 0 ]
then 
echo "$year is a leap year"
count=`expr "$count + 1"|bc`
fi
i=`expr "$i + 1"|bc`

done
