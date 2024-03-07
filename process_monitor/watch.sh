#!/bin/bash

# 检查进程是否存活,如果不存活就重启。可以在定时任务中每分种运行一下这个 shell

exec_path="$(pwd)"/main.py
watch_log=/tmp/watch.log

time=$(date "+%Y-%m-%d %H:%M:%S")

ps_status=$(ps aux | grep ${exec_path} | grep -v grep)
if [ "$ps_status" == "" ]; then
        echo "${time} ${exec_path} has exist. It was restarted." >>${watch_log}
        nohup ${exec_path} &
else
        echo "${time} ${ps_status}" >>${watch_log}
fi
