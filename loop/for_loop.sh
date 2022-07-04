
for((i=1;i<=10;i++))
do   
	echo $(expr $i \* 3 + 1)
	echo "wx${i}"
done
