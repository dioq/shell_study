#!/bin/bash
<<!
字符串包含子串
!

A="helloworld"
B="low"

if [[ $A == *$B* ]]; then
    echo "包含"
else
    echo "不包含"
fi

bundle_id="com.jobs8.*"

if [[ ${bundle_id} != *"*"* ]]; then
    echo "not contain *"
else
    echo "contain *"
fi
