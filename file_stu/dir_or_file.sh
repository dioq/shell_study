#!/bin/bash
path=$1
if [ -d $path ]; then # 判断是否为 directory
	echo "is directory"
elif [ -f $path ]; then # 判断是否为 file
	echo "is file"
else
	echo "not exist"
fi
