#!/bin/bash

cache_file="1.txt"

echo "" >>${cache_file} # 注意:这种读文件的方式是根据\n来分行读取文件的,如果最后一行没有\n 是读取不到的.为了能读取到文件所有内容,在读取前先在文件最后一行加入换行符
# 把整个文件内容读到内存,然后再逐遍历数据
cat ${cache_file} | while read line; do
    # 把文件内容读进内存后立马清理文件此时数据已经进在内容中了,不会影响内存中的数据完整性
    cat /dev/null >${cache_file}
    echo $line
done
# cat /dev/null > ${cache_file}
