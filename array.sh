<<!
数组定义和遍历
!
array=(1 2 3 4 5)
for i in ${array[*]}
do
    echo $i
done

arr2=("AA" "BB" "CC")
for i in ${arr2[*]}
do
    echo $i
done
