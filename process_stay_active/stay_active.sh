#!/bin/sh

exec_path=./server_http.py

while true; do
        process=$(ps aux | grep ${exec_path} | grep -v grep)

        if [ "$process" == "" ]; then
                echo "process has exited."
                nohup ${exec_path} &
        else
                echo "process exsits"
        fi
        sleep 60
done
