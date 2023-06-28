#!/bin/bash

# $?是接收上一条函数的执行结果

function test() {
        echo "test here"
        return 100
}
test

ret=$?
echo "ret: $ret"
