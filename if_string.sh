<<!
整数比较运算符:
1、-eq:表示等于,用于判断两数是否相等(equal),相等则返回true。
2、-ne:表示不等于,用于判断两数是否不相等(not equal),不相等则返回true。
3、-gt:表示大于,用于判断第一个数是否大于后一个数(greater then),大于则返回true。
4、-lt:表示大于,用于判断第一个数是否小于后一个数(less then),小于则返回true。
5、-ge:表示大于或等于,用于判断第一个数是否大于或等于后一个数(greater or equal),大于或等于则返回true。
6、-le:表示小于或等于,用于判断第一个数是否小于或等于后一个数(less then or equal),小于或等于则返回true。

字符串比较运算符
1、==:表示等于,用于判断两个字符串是否相等,相等则返回true,否则返回false;用法如:[ "C" == "C" ];
2、!=:表示不等于,用于判断两个字符串是否不相等,不相等则返回true,否则返回false;用法如:[ "C" != "D" ];
3、>:表示大于,判断字符串大小时根据字符串对应的ASCII字码表,前一个字符串大于后一个字符串时,返回true,否则返回false;用法如:[ 9 \> 3 ]或[[ 9 > 3 ]]或(( 9 > 3 ));
4、<:表示小于,判断字符串大小时根据字符串对应的ASCII字码表,前一个字符串小于后一个字符串时,返回true,否则返回false;用法如:用法如:[ 9 \< 30 ]或[[ 9 < 30 ]]或(( 9 < 30 ));
5、>=:表示大于等于,当前一个字符串大于等于后一个字符串时,返回true,否则返回false;,用法如:( 10 >= 9 );
6、<=:表示小于等于,当前一个字符串小于等于后一个字符串时,返回true,否则返回false;用法如:( 9 <= 10 );
7、-n:用于判断字符串长度是否不等于0,当字符串不为0时,返回true,否则返回false;用法如:str1="haodaolinux",str2="",[ -n "$str1" ]为true,[ -n "$str2" ]为false;
8、-z:用于判断字符串长度是否等于0,当字符串为0时,返回true,否则返回false;用法如:str1="haodaolinux",str2="",[ -z "$str1" ]为false,[ -z "$str2" ]为true;
9、当一个字符串存在时,返回真,否则返回false;用法如:str1="haodaolinux",str2=,[ $str1 ]为true,[ $str2 ]为false;
!

a=Hello
b=Hello
if [ $a == $b ]
then
   echo "a 等于 b"
elif [ $a -gt $b ]
then
   echo "a 大于 b"
elif [ $a -lt $b ]
then
   echo "a 小于 b"
else
   echo "没有符合的条件"
fi
