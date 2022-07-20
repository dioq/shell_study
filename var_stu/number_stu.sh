
# 定义整型变量
n=`expr 1`
echo $n

# 改变整型变量的值
n=`expr 2`
echo $n

# 数字运算,注意不能有空格
let n=$n+1
echo $n