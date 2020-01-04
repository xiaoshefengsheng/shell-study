#!/bin/bash
#变量和环境变量
#一般进程的环境变量可以通过 cat /proc/$PID/environ查看所属进程的环境变量，PID可以使用pgrep 进程名获得如： pgrep gedit 获得PID号为12501，此时就可以 cat /proc/12501/environ 查看对应环境变量,环境变量默认以null字符(\0)分割，我们一般看到是连在一起的，为了便于分析查看，可以使用 tr命令替换
#如：cat /proc/12501/environ |tr '\0' '\n' 换行查看

#变量简单使用,定义变量并赋值，用echo 双引号中 $count 或 ${count} 这种输出变量值
fruit=china-apple
count=5
echo "we have $count ${fruit}(s)"

#添加环境变量
#如经常需要添加和变动的$PATH ，这里面存放了执行命令时要查找的路径
#export PATH="$PATH:/opt/shell/"  #通过export命令修改环境变量

#变量技巧
#1.获取变量值的长度
echo ${#fruit}
#2.获取当前shell
echo $SHELL
#3.检查是否是root超级用户
if [ $UID -ne 0 ]; then
    echo Non root user, please run as root.
else
    echo Root user.
fi

#4.添加环境变量
export PATH=/opt/shell:$PATH
export LD_LIBRARY_PATH=/opt/shell:$LD_LIBRARY_PATH
#创建一个函数用来更新变量,如下使用方法
prepend() {[ -d "$2" ] && eval $1=\"$2':'\$$1\" && export $1;}
prepend PATH /opt/shell
prepend LD_LIBRARY_PATH /opt/shell


