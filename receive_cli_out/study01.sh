#!/bin/bash
<<!
接收其他命令行的输出
!

num=0
test() {
    for line in `security find-identity -p codesigning -v`
    do
        echo "index:${num}"
        echo $line
        num=$((1+$num))
    done
}

test