#!/bin/bash

funWithReturn(){
	val=`expr $1 + $2` 
	return ${val}  
} 
funWithReturn 10 20

ret=$?
echo "两数之和为:$ret"
