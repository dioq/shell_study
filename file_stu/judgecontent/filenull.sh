#!/bin/bash
cache_file="1.txt"

# 文件存在且不为空,-s代表存在不为空
if [[ -s ${cache_file} ]]; then
	echo "文件存在且不为空"
	# 清空文件
	cat /dev/null >${cache_file}
else
	echo "文件不存在或者为空"
fi
