#!/bin/bash
#cecho.sh 以echo举例将格式化后的参数传递给命令
echo $*'#'   #任何echo出的字符串后都跟一个#字符

#定义完成后，测试下正常传递参数的结果
#/opt/shell-study/shell-2.5.4.sh arg1 arg2
#指定-I {} 参数，可以循环接收到的参数，默认空格分隔,每执行一个命令，{}里的参数都会替换相应
#cat /tmp/args.txt | xargs -I {} ./shell-2.5.4.sh -p {} -1

#结合find使用xargs
#如下操作，有一定风险删除不必要删除的文件，因为我们不知道find的定界符究竟是什么，如果文件名包含空格字符
#find . -type f -name "*.txt" -print |xargs rm -f 
#修改为指定分解符即可避免误删文件，如下设置查找到的每个参数以null分隔，而xargs可以使用-0指定分隔符为\0。
#find . -type f -name "*.txt" -print0 |xargs -0 rm -f

#统计文本行数
#find /opt -type f -name "*.sh" -print0 |xargs -0 wc -l
#结合stdin，用while循环语句和子shell, cat $arg 可以替换为多条命令，符合while格式即可。
#cat /tmp/files.txt | ( while read arg; do echo cat $arg; done)
#cat /tmp/files.txt | xargs -I {} cat {} 
