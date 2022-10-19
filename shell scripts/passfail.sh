#!/bin/bash
echo "Enter 5 marks"
read m1
read m2
read m3
read m4
read m5
percentage=`expr "($m1 + $m2 + $m3 + $m4 + $m5) / 5"|bc`
if  [ $percentage -gt 75 ] 
then 
echo "First division"
exit
elif  [ $percentage -gt 60 ] 
then 
echo "Second Division"
exit
elif  [  $percentage -gt 40 ] 
then 
echo "Third Division"
exit
fi
echo "FAIL"
