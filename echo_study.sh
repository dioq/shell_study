#!/bin/bash
cache_file="tmp.txt"

# 清空原文件再写入自己的数据
echo "AAAAAAAAA" >${cache_file}
echo "aaa" >${cache_file}

# 从原文件尾部追加数据
echo "BBBBBBBBBB" >>${cache_file}

# 读取行号
echo $LINENO

# 清空文件
cat /dev/null >${cache_file}
