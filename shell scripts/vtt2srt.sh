#!/bin/bash -x
sed -i "/WEBVTT/d" $1
for i in `grep -n "\-\->" $1 | cut -d: -f1`
do 
sed -i "${i}s/\([0-9]\)\.\([0-9]\)/\1,\2/g" $1
done
newname=`echo $1 | sed "s/vtt/srt/g"`
mv $1 $newname
x=0
for i in `grep -n "^$" $newname | cut -d: -f1`
do 
sed -i "${I}s/.*/tempname${x}/" $newname
x=$((x+1))
done
sed -i "s/tempname/\n/g" $newname