#!/bin/bash
echo "Enter directory name "
read dirname
if [ -d $dirname ]
then
echo "directory exist"
else
echo "creating new directory with given name"
mkdir $dirname
fi