#!/bin/bash

read_dir(){
    for file in `ls -a $1`
    do
        if [ -d $1"/"$file ]
        then
            if [[ $file != '.' && $file != '..' ]]
            then
                read_dir $1"/"$file
            fi
        else
            echo $1"/"$file
        fi
    done
}

read_dir ./MyShell
