#!/bin/bash

filename=rongtao.tar.gz

# 前缀
echo "${filename%%.*}"

echo "${filename%.*}"

echo "${filename#*.}"

# 后缀
echo "${filename##*.}"
