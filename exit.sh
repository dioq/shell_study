#!/bin/bash

<<!
exit 是一个 Shell 内置命令，用来退出当前 Shell 进程，并返回一个退出状态；使用$?可以接收这个退出状态
在结束窗口输入:echo $?  查看shell结束状态
!

echo "befor exit"
exit 8
echo "after exit"
