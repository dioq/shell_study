#!/bin/bash
<<!
接收其他命令行的输出
!

# 获取所有可用于签名的证书
certs=$(security find-identity -v -p codesigning)

# 计算有效行数
line_count=$(( $(echo "$certs" | wc -l) - 1 ))

# 删除无用行
certs=$(echo "$certs" | head -n $line_count)

echo "$certs" | sed -r 's/.*"(.*)"/\1/g'

# security find-identity -p codesigning -v
# content=`security find-identity -p codesigning -v`
# echo $content
# content=$(echo $content)
# # echo $content
# arr=(`echo $content | tr '/\n/g' ' '` )
# for i in ${arr[*]}
# do
#     echo $i
# done

# content=${content// /}
# echo $LINENO
# echo $content

# TEAMID="5YBWG2X244"
# task_allow=false
# certificate=""
# num=0
# test() {
#     for line in `security find-identity -p codesigning -v`
#     do
#         echo "index:${num}"
#         echo $line
#         num=$((1+$num))
#     done
# }

# test