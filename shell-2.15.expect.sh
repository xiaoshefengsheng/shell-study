#!/usr/bin/expect
#使用expect实现自动化输入
spawn ./shell-2.15.sh
expect "enter number:"
send "1\n"
expect "enter name :"
send "hello\n"
expect eof
