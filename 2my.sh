<<!
批量创建文件目录
!
path=./test2
del_arr=("Watch" "Plugins" "_CodeSignature")
for item in ${del_arr[*]}
do
	p2="${path}/${item}"
	echo $p2
	mkdir $p2
done
