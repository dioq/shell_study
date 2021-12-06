# 这里的-d 参数判断$myPath是否存在
myPaht=./*.out
if [ ! -d "$myPath"] 
then
	echo "not exist"
else
	echo "exist"
	rm $myPaht
fi
