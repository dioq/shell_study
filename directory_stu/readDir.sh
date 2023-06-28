#!/bin/bash

# 递归遍历所有的 directory
read_dir() {
    for file in $(ls -a $1); do
        if [ -d "$1/$file" ]; then                       # 判断是 directiory
            if [[ $file != '.' && $file != '..' ]]; then # 排除两个系统目录
                # 递归遍历所有的 目录
                read_dir "$1/$file"
            fi
        else
            # 进入这里的都是文件
            echo "$1/$file"
        fi
    done
}

read_dir ~/Repository/MyShell
