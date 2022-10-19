#!/bin/bash.sh
echo "enter file 1"
read file1
echo "enter file 2"
read file2
cmp -s ${file1} ${file2} 
if [ $? -eq 0 ]
then 
echo "same content"
exit
fi
echo "diff content"