<<!
遍历 path 文件夹，判断文件类型，获取文件名
!
path=./test
files=$(ls $path)
for filename in $files
do
	echo "filename:$filename"
        # 找到 .app 后缀的文件
        if test "${filename##*.}" = "app"
        then
                path="$path/$filename"
                exe_bin="${filename%%.*}"
		echo "path:${path}"
		echo "exe_bin:${exe_bin}"
        fi
done
