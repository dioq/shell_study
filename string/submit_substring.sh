#!/bin/bash
<<!
提取子字符串
格式	                                说明
${string: start :length}	    从 string 字符串的左边第 start 个字符开始，向右截取 length 个字符。
${string: start}	            从 string 字符串的左边第 start 个字符开始截取，直到最后。
${string: 0-start :length}	    从 string 字符串的右边第 start 个字符开始，向右截取 length 个字符。
${string: 0-start}	            从 string 字符串的右边第 start 个字符开始截取，直到最后。
${string#*chars}	            从 string 字符串第一次出现 *chars 的位置开始，截取 *chars 右边的所有字符。
${string##*chars}	            从 string 字符串最后一次出现 *chars 的位置开始，截取 *chars 右边的所有字符。
${string%%*chars}	            从 string 字符串第一次出现 *chars 的位置开始，截取 *chars 左边的所有字符。
${string%*chars}	            从 string 字符串最后一次出现 *chars 的位置开始，截取 *chars 左边的所有字符。
!

substring_range() {
    url="c.biancheng.net"
    echo ${url: 2: 9}
}

# substring_range

study01(){
    url="http://c.biancheng.net/index.html"
    echo ${url#*/}    #结果为 /c.biancheng.net/index.html
    echo ${url##*/}   #结果为 index.html
    str="---aa+++aa@@@"
    echo ${str#*aa}   #结果为 +++aa@@@
    echo ${str##*aa}  #结果为 @@@
}

# study01

study02(){
    url="http://c.biancheng.net/index.html"
    echo ${url%/*}  #结果为 http://c.biancheng.net
    echo ${url%%/*}  #结果为 http:
    str="---aa+++aa@@@"
    echo ${str%aa*}  #结果为 ---aa+++
    echo ${str%%aa*}  #结果为 ---
}

# study02

test1() {
    string="2)3062774D0C6C8F35BE0CF2BEA744F54CB50D220B\"AppleDistribution:ZhendongLi(38D3676P2T)\""
    echo $string
    string=${string##*"Distribution:"}
    echo $string
    string=${string%"(38D3676P2T"*}
    echo $string
}

# test1

test2() {
    string="2)3062774D0C6C8F35BE0CF2BEA744F54CB50D220B\"AppleDistribution:ZhendongLi(38D3676P2T)\""
    echo $string
    string=${string#*")"}
    echo $string
    string=${string%"\"Apple"*}
    echo $string
}

test2