#!/bin/bash

filename=rongtao.tar.gz

# 前缀
echo "${filename%%.*}"

echo "${filename%.*}"

echo "${filename#*.}"

# 后缀
echo "${filename##*.}"

filepath=/dir1/dir2/file1.txt
# 取路径最后一项
echo "${filepath##*/}"
# 取路径除最后一项
echo "${filepath%/*}"
