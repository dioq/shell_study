#!/bin/bash
<<!
数组定义和遍历
!

arr1=(10 11 12 13 14 15)
count=${#arr1[*]} # 获取数组元素个数
echo "arr1 count:$count"
for i in ${arr1[*]}; do
    echo $i
done

arr2=("AA" "BB" "CC")
for i in ${arr2[*]}; do
    echo $i
done

# 根据下标取元素
echo ${arr2[1]}
