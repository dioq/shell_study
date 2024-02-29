#!/bin/bash

# 检查进程是否存活,如果不存活就重启。可以在定时任务中每分种运行一下这个 shell

exec_path=/home/zd/project/main.py
log_path=/var/log/zd_ipa.log

process=$(ps aux | grep ${exec_path} | grep -v grep)
echo $process >> ${log_path}
if [ "$process" == "" ]; then
	echo "process has exist. I am restarting the main.py process ..." >> ${log_path}
        nohup ${exec_path} &
else
        echo "process was running ..." >> ${log_path}
fi
