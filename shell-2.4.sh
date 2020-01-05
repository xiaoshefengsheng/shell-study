#!/bin/bash
find . -print #打印当前文件夹文件和目录列表，-print可以省略不写
find . -print0 #指明使用'\0'作为分隔符，所有文件列表会在一行打印出来
find /opt/ -name "*.txt" -print  #正则匹配*,查找所有.txt结尾的文件名
find . \( -name "*.txt" -o -name "*.pdf" \) -print    #查找.txt或.pdf结尾的文件名，-o或的条件,\( \)为的是把里面的条件作为一个整体处理
find /opt/ -path "*/shell/*" -print  #-path的参数使用通配符来匹配文件路径，-name为匹配文件名。 -path则将文件路径作为一个整体进行匹配
find . -regex ".*\(\.py\|\.sh\)$"    #正则匹配，.py或.sh后缀文件，.*通配前面n个字符，$表示以.py或.sh结尾。
find . -iregex ".*\(\.py\|\.sh\)$"  #iregex忽略大小写
find . ! -name "*.txt"  #输出不是.txt结尾的文件名
find . -maxdepth 1 -name "f*"  #基于目录深度进行查找以f开头的任意文件,查找最大深度1的
find . -mindepth 2 -name "f*"  #查找最小2层子目录的文件
find . -type d  #查找目录类型
find . -type f  #查找文件类型
find . -type l  #查找符号链接

#根据时间进行搜索，以天为单位的：atime访问时间，mtime修改时间，ctime变化时间
find . -type f -atime -7  #七天内访问过的文件 
find . -type f -atime 7  #刚好七天前访问过的文件
find . -type f -atime +7  #打印访问时间超过七天的所有文件
#以分钟为单位的，-amin 访问时间，-mmin修改时间，-cmin变化时间
find . -type f -amin +7 #打印出访问时间超过7分钟的文件
find . -type f -newer file.txt  #-newer可以指定file.txt文件为参考文件，根据时间戳找出比file.txt修改时间更新的所有文件

#基于文件大小搜索，b块(512字节) ，c字节，w字(2字节)，k千字节，M 1024字节，G 1024M字节
find . -type f -size +2k  #大于2k文件
find . -type f -size -2k  #小于2k的文件
find . -type f -size 2k  #大小等于2k的文件

find . -type f -name "*.swp" -delete  #删除匹配的文件
find . -type f -perm 644  #打印出匹配权限的文件
find . -type f -name "*.php" ! -perm 644  #打印出后缀php的，权限不是644的文件
find . -type f -user nginx  #打印出用户nginx的文件

#利用find执行命令或动作
find . -type f -user root -exec chown nginx {} \;  #exec后面可以跟命令，对find找出的标准输出文件名进行操作
find . -type f -name "*.c" -exec cat {} \; >all_c_file.txt  #找到所有.c后缀的文件，cat文件内容并输出到all_c_file.txt文件内。
find . -type f -mtime +10 -name "*.txt" -exec cp {} /tmp/temp \;  #查找到10天前创建或修改的文件，复制到/tmp/temp里
find . -type f -name "*.txt" -exec printf "text file : %s\n" {} \;  #查找到文件后，可以将文件名逐行格式化输出，带提示符 text file:
find /opt/ \( -name ".git" -prune \) -o \( -type f -print \)  #过滤不需要的.git目录，然后查找其他的所有文件，排除的参数放第一个语句块。

