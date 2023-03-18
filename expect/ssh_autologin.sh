#!/usr/bin/expect
spawn ssh root@jobs8.cn -p 22
expect "*password:"
send "rootzhang\r"
expect "*#"
interact
