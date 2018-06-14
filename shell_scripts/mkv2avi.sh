#!/bin/bash

shopt -s nullglob

array=(*.mkv)

echo ${array[*]}

for name in ${array[@]} ; do
	ffmpeg -i $name -y -target pal-dvd -qscale 0 -aspect 16:9 $name.avi
done

exit 0
	
