#!/bin/bash
echo "Enter your filename"
read name
if [ -f "$name" ]
then
echo "File exist"
echo 'Hello World!' >$name
else
echo "File does not exit"
touch $name
echo 'Hello World!' >$name
fi
