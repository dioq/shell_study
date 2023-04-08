# expect 处理交互的命令

借助Expect，可以将交互过程写在一个脚本上，使之自动化完成。
像 ssh登录，ftp登录等都符合交互的定义。可以根据用户设定的规则和系统进程进行自动化交互，例如远程登陆的密码输入、自动化的执行远程命令。

## expect中最关键的四个命令是spawn、expect、send、interact
spawn：启动新的进程，后面可接shell命令
expect：从进程接收字符串
send：用于向进程发送字符串 
interact：允许用户交互
