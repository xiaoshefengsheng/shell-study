#!/bin/bash
#管道符 命令1的输出为命令2的输入
ls /opt | cat -n >/tmp/out.txt
#用$() 形式读取由管道相连的命令，也称子shell
cmd_output=$( ls /opt | cat -n )
echo $cmd_output
#用反引号也可以存储命令输出
cmd_output=`ls /opt | cat -n`
echo $cmd_output
#子shell内切换了目录，但是主shell没有切换目录
pwd;
(cd /tmp; ls)
pwd;

#通过引用子shell保留空格和换行符
#echo -e "1\n2\n3" >>/tmp/text.txt

out=$(cat /tmp/text.txt)
echo $out

out="$(cat /tmp/text.txt)"
echo $out
