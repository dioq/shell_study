#!/bin/bash
<<!
字符串去空格
!

test_str=' 123 456 '
echo "$LINENO test_str:---->${test_str}<----"
test() {
    # 去除左右空格
    result=$(echo $test_str)
    echo "$LINENO test_str:---->${result}<----"
}

test1() {
    # 去除所有的空格
    result=${test_str// /}
    echo "$LINENO test_str:---->${result}<----"
}

test2() {
    # 去除所有的空格
    result="$test_str" | awk '{gsub(/ /,"")}1'
    echo "$LINENO test_str:---->${result}<----"
}

test
test1
test2
