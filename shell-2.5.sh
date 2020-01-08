#!/bin/bash
#玩转xargs
#创建一个多行文本
cat <<EOF >/tmp/example.txt
1 2 3 4 5 6
7 8 9 10
11 12
EOF

#xargs可以将多行文本使用空格替换换行符变成为单行文本
cat /tmp/example.txt | xargs 
#会显示： 1 2 3 4 5 6 7 8 9 10 11 12
#使用-n 3参数，指定每行参数数量为3，则会实现多行输出
cat /tmp/example.txt | xargs -n 3
#使用-d参数指定分隔符或者叫定界符
echo "splitXsplitXsplitXsplit" | xargs -d X
#使用-d分割后，使用-n指定每行参数数量
echo "splitXsplitXsplitXsplit" | xargs -d X -n 2 

