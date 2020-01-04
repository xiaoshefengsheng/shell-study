#!/bin/bash
repeat()
{
while true;
do
    $@ && return;
    sleep 3;
done
}
#repeat() {while :; do $@ && return; done}  #用:，可以一直返回0的退出码，比true计算快
#用函数传入参数命令，不成功就继续循环，成功就执行return退出循环
repeat cat /tmp/xiaoshe.txt
