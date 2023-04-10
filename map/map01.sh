#!/usr/local/bin/bash

# 初始化一个map 并赋值
declare -A map=(["100"]="1" ["200"]="2")

# 添加值
map["300"]="3"
map["a"]="A"
map["c"]="C"
map["d"]="D"
map["key1"]="value1"
map["3"]="10"
map["4"]="17"
map["5"]="26"
map["aa"]="AA"
map["bb"]="BB"

# 输出key对应的值
echo ${!map[*]}
# 输出所有value
echo ${map[*]}
for key in ${!map[*]}
do
    echo "${key}:${map[$key]}"
done