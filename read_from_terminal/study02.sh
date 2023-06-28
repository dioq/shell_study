#!/bin/bash
# select 的语句可以用来在shell 中实现类似于下拉菜单的功能，让用户可以在一组选项中进行选择

PS3="请输入数字选择你的选项:"
options=("option1" "option2" "option3")
select var in ${options[*]}; do
    echo "你选择的是: $var"
    break
done
