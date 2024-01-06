#!/bin/sh

exec_path=./server_http.py

while true; do
        process=$(ps aux | grep ${exec_path} | grep -v grep)

        if [ "$process" == "" ]; then
                sleep 30
                echo "process has exited."
                nohup ${exec_path} &
        else
                sleep 30
                echo "process exsits"
        fi
done
