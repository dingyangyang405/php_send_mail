#!/bin/bash

filename=$1                                              #附件(参数传入) 
content=`cat $filename`                                  #附件base64编码  
mailsvr='1178175072@qq.com'                              #邮件服务器域名  
smtp_server='smtp.qq.com 25'                                      #邮件服务器IP 端口  
user=`echo -n "${mailsvr}" | base64`                                 #发送邮件账号(base64编码)  
pwd='eXppZmJxY3lwbmxhamVmaQ=='                           #发送邮件口令(base64编码)  
rcpt=${mailsvr}                                          #接收邮箱  
 
(
sleep 1
echo "auth login"                                        #登录认证  
sleep 1  
echo $user                                               #输入账号口令  
sleep 1  
echo $pwd  
sleep 1  
echo "helo $mailsvr"                                     #跟服务器打招呼  
sleep 1  
echo "mail from:<${mailsvr}>"                               #发件人  
sleep 1  
echo "rcpt to:<${rcpt}>"                                    #收件人  
sleep 1  
echo "data"                                              #数据输入开始  
sleep 1  
echo "from:<${mailsvr}>
to:<${rcpt}>
subject:subject

Hello dyy, the content is ${content}!                    

.
"  
sleep 1  
echo "quit" 
 )| telnet ${smtp_server}



#!/usr/bin/expect
expec << EOF
spawn telnet 182.119.xxx.xxx
expect "login:"
send "your username\r"
expect "Password:"
send "your password\r"
expect "$"
send "#!/bin/ksh\r"
expect "$"
send "cd testfolder\r"
expect "$"
send "touch t.txt\r"
expect "$"
send "exit\r"