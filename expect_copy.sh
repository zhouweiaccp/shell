#!/usr/bin/expect 
#自动拷贝文件至远端机器
set password yourPasswor

spawn scp -P yourPort  /home/fileName.war root@xxx.xxx.xxx.xxx:/usr/local/liferay-portal/deploy/
set timeout 30000
expect "root@xxx.xxx.xxx.xxx's password:"
set timeout 30000
send "$password\r"
set timeout 30000
send "exit\r"
expect eof
