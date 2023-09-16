#!/bin/bash
<<!
exec是用被执行的命令行替换掉当前的shell进程,且exec命令后的其他命令将不再执行。
!

echo "start exec"
exec ls
echo "end exec"
