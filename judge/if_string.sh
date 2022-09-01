
a=Hello
b=Hello2
if [ $a == $b ]
then
   echo "a 等于 b"
elif [ $a > $b ]
then
   echo "a 大于 b"
elif [ $a < $b ]
then
   echo "a 小于 b"
else
   echo "没有符合的条件"
fi

if [ $a != $b ]
then
	echo "a != b"
fi

if [ $a != "Hello2" ]
then
        echo "a != Hello2"
fi
