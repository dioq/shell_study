
path=$1
if [ -d $path ] # 判断是否为 directory 
then
	echo "is directory"
elif [ -f $path ] # 判断是否为 file
then
	echo "is file"
else
	echo "other"
fi
