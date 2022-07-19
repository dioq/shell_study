#!/bin/bash

cache_file="1.txt"

# 把整个文件内容读到内存,然后再逐遍历数据
cat ${cache_file} | while read line
do
    # 把文件内容读进内存后立马清理文件此时数据已经进在内容中了,不会影响内存中的数据完整性
    echo "" > ${cache_file}
    echo $line
done
# echo "" > ${cache_file}