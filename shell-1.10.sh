#!/bin/bash
#文件名： sleep.sh  可以实现计时器的数字变动,tput sc存储光标位置，tput rc恢复光标位置，tput ed删除光标到行尾内容，echo -n 只输出到当前行,sleep 1实现时间延时
echo -n Count:
tput sc

count=0;
while true;
do
    if [ $count -lt 30 ];
    then
        let count++;
        sleep 1;
        tput rc
        #tput ed
        echo -n "$count";
    else exit 0;
    fi
done
