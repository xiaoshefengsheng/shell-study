#!/bin/bash
#排序，唯一与重复
#sort对文件或标准输入都可进行排序，并标准输出
#sort file1.txt file2.txt >sorted.txt
#sort file1.txt file2.txt -o sorted.txt
##按照数字顺序进行排序
#sort -n file1.txt
##按照逆序进行排序
#sort -r file1.txt
##按照月份进行排序
#sort -M file1.txt
##合并两个已经排序过的文件
#sort -m sorted1 sorted2 
##找出已排序文件中不重复的行
#sort file1.txt file2.txt | uniq
##检查文件是否已经排序过
##!/bin/bash
#sort -C filename;
#if [ $? -eq 0 ]; then
#    echo sorted;
#else
#    echo unsorted;
#fi

#
cat <<EOF >/tmp/data.txt
1 mac 2000
2 winxp 4000
3 bsd 1000
4 linux 1000
EOF

#使用-k对哪一列(键)进行排序，-r进行逆序,数字排序必须使用n
sort -nrk 1 /tmp/data.txt
#使用第二列排序
sort -k 2 /tmp/data.txt

cat <<EOF >/tmp/data2.txt
1510hellothis
13337464dfdfdfd
13222189ababbba
EOF
#对特定字符进行排序

sort -nk 3,4 /tmp/data2.txt

sort -z /tmp/data.txt |xargs -0
#-b忽略前导空白行， -d用于指明以字典进行排序
sort -bd /tmp/data2.txt

#uniq 进行消除重复的行，从给定的输入中找出唯一的行，它也可以用来找出重复行，前提是必须是经过排序的数据输入

cat >/tmp/data3.txt <<EOF
bash
foss
hack
hack
EOF

sort /tmp/data3.txt |uniq  #生成唯一的行，重复的行只打印一次
sort /tmp/data3.txt | uniq -u  #只显示唯一的行

sort /tmp/data3.txt | uniq -c  #对文件中出现的行的次数统计
sort /tmp/data3.txt |uniq -d  #找出文件中重复的行

#-s 指定跳过前n个字符 ，-w指定用于比较最大字符数
cat <<EOF >/tmp/data4.txt
u:01:gpu
d:04:linux
u:01:bash
u:01:hack
EOF

sort /tmp/data4.txt | uniq -s 2 -w 2
#uniq -z file.txt   #uniq -z生成包含0值字节终止符的输出
#uniq -z file.txt |xargs -0 rm  #如果某个文件名在文件中出现多次，uniq命令只会讲这个文件名写入标准输出一次
