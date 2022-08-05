
# 在方法内累加到6
num=0
testLoop() {
    num=$((1+$num))
    echo "num:${num}"
    if [ $num -le 5 ]
    then
        testLoop
    fi
}

testLoop



# 在方法内累国求和
sum=0
addFunc() {
    for((i=1;i<=100;i++))
    do
        sum=$((i+$sum))
    done
    echo $sum
}

addFunc