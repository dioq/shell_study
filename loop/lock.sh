#!/bin/bash
finish=false

handleWX() {
	finish=false #正在处理任务,其他任务等待
	echo "执行任务中 ..... "
	sleep 3
	finish=true
}

while true; do
	if [ ${finish} ]; then
		echo "开始新一轮的提取和解析 ..."
		handleWX
	fi
	echo "end func .."
done
