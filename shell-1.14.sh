#!/bin/bash
#不实用回车键来读取n个字符
#-n 读取2个字符后就执行下一个命令
read -n 2 var
echo $var
#-s输入时不显示字符
read -s var
echo $var
#-p显示提示信息
read -p "Enter input:" var
echo $var
#-t在特定时限内读取输入,如下两秒内
read -t 2 var
echo $var
#-d用特定的定界符作为输入行的结束
read -d ":" var
echo $var
