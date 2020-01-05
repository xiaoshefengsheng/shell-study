#!/bin/bash
#命令之乐，通过结合多个命令来解决复杂的问题，一些经常用到的命令是grep,awk,sed,find
#打印单个文件
#cat /opt/shell-study/shell-2.1.sh
#打印多个文件
#cat /opt/shell-study/shell-2.1.sh /opt/shell-study/shell-1.11.sh
#从标准输入读取内容跟cat后的标准输出拼接在一起
echo "hello world" | cat - /opt/shell-study/shell-2.1.sh
#去除空白行,使用-s参数，tr也可以替换。

cat -s /opt/shell-study/shell-2.1.sh
#显示制表符显示为^|，使用-T参数即可，显示行号 -n
