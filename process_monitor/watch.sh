#!/bin/bash

# 检查进程是否存活,如果不存活就重启。可以在定时任务中每分种运行一下这个 shell

work_path="$(pwd)"/main.py
work_log=/tmp/work.log
watch_log=/tmp/watch.log

process=$(ps aux | grep ${work_path} | grep -v grep)
if [ "$process" == "" ]; then
        echo "$work_path has exist. It was restarted." >>${watch_log}
        nohup ${work_path} >>${work_log} &
else
        echo "$process" >>${watch_log}
fi
