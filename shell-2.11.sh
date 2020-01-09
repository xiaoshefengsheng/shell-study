#!/bin/bash
#分割文件和数据,生成xaa xab xac等类型文件，可以看到后缀区分顺序
#split -b 10k /tmp/data211.txt #将一个100k大小的文件切割为10k的多个小文件

#split -b 10k /tmp/data211.txt -d -a 4 #-a指定后缀长度  -d使用数字后缀

#指定切割后文件名前缀,如下指定切割的文件前缀为split_file,会生成split_file0000  split_file0001等
#split -b 10k /tmp/data211.txt -d -a 4 split_file 

#-b指定数据块切割单位：k(KB) M(MB) G(GB) c(type) w(word)

#使用-l指定用行数来切割,如下指定10行分隔一次，每个文件10行
#split -l 10 /tmp/data211.txt

#csplit为split工具的变体,可以根据文件特点进行特定字符分割
cat <<EOF >/tmp/server.log
SERVER-1
[connection] 192.168.0.1 success
[connection] 192.168.0.2 failed
[disconnect] 192.168.0.3 pending
[connection] 192.168.0.4 success
SERVER-2
[connection] 192.168.0.1 failed
[connection] 192.168.0.2 failed
[disconnect] 192.168.0.3 success
[connection] 192.168.0.4 failed
SERVER-3
[connection] 192.168.0.1 pending
[connection] 192.168.0.2 pending
[disconnect] 192.168.0.3 pending
[connection] 192.168.0.4 failed
EOF
#分割上面的文件为server1.log server2.log server3.log 根据关键字如下分割：
csplit /tmp/server.log /SERVER/ -n 2 -s {*} -f /tmp/server -b "%02d.log" ; rm /tmp/server00.log 
#因为生产的第一个文件为空内容，所有执行了删除，实际中如果关键字符在中间用来切割，就不用删除首个文件了。
#/SERVER/ 指定要匹配的某一行
#/[REGEX]/ 表示文本样式，包含首行至关键字的行
#{*} 表示根据匹配重复执行分割，直到尾行，可以用{整数}指定分隔的次数
#-s 静默模式，不打印其他信息
#-n 指定分隔后的文件名后缀个数，如01,02,03
#-f指定分隔后的文件名前缀，如上为server字符
#-b指定后缀格式，例如 %02d.log,类似于printf的参数格式。 故综上，本次分隔后的文件名为：server01.log server02.log server03.log ...

