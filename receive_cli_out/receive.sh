#!/usr/local/bin/bash
<<!
接收其他命令行的输出
!

# 从这条命令行里输出数据
security find-identity -v -p codesigning

# 获取所有可用于签名的证书
certs=$(security find-identity -v -p codesigning)

# 计算有效行数
line_count=$(($(echo "$certs" | wc -l) - 1))
# echo $line_count
# 删除无用行
certs=$(echo "$certs" | head -n $line_count)

# certs=$(echo "$certs" | sed -r 's/.*"(.*)"/\1/g')
# echo $certs

certs=${certs// /}
# echo $certs

TEAMID="38D3676P2T"

name=""
# num=0
array=($(echo $certs | tr '\n' ' '))
for line in ${array[*]}; do
    # echo "index:${num}"
    # echo $i
    # num=$((1+$num))
    if [[ $line == *${TEAMID}* ]]; then
        # echo $line
        string=${line##*"Distribution:"}
        # echo $string
        name=${string%"(38D3676P2T"*}
        # echo $name
    fi
done

declare -A map=()
for line in ${array[*]}; do
    if [[ $line == *${name}* ]]; then
        if [[ $line == *"Distribution"* ]]; then
            string=${line#*")"}
            # echo $string
            string=${string%"\"Apple"*}
            # echo $string
            map["Distribution"]=$string
        elif [[ $line == *"AppleDevelopment"* ]]; then
            string=${line#*")"}
            echo $string
            string=${string%"\"Apple"*}
            map["Development"]=$string
        fi
    fi
done

for key in ${!map[*]}; do
    echo "${key}:${map[$key]}"
done
