#!/bin/bash
#比较与测试
#if 条件 else if 和else
#算术比较：-gt 大于 ， -lt 小于， -ge 大于或等于， -le 小于或等于,-eq 等于，-ne不等于
#文件系统相关测试
#[ -f $file_var ] 如果给定的变量是否包含正常的文件路径和文件名，包含返回真
#[ -x $var ] 如果给定的变量包含的文件是否可执行，则返回真
#[ -d $var ] 如果给定的变量包含的是目录，则返回真
#[ -e $var ] 如果给定的变量包含的文件存在，则返回真
#[ -c $var ] 如果给定的变量包含是一个字符设备，则返回真
#[ -b $var ] 如果给定的变量包含的是一个块设备的路径，则返回真
#[ -w $var ] 如果给定的变量包含的文件可写，则返回真
#[ -r $var ] 如果给定的变量包含的文件可读，则返回真
#[ -L $var ] 如果给定的变量包含的是一个符号链接，则返回真

#fpath="/etc/passwd"
#if [ -e $fpath ]; then
#    echo this file exists;
#else
#    echo does not exists;
#fi
#字符串比较
#[ $str1 = $str2 ] 如果这两个字符串想等，返回真
#[ $str1 == $str2 ] 另一种比较方法
#[ $str1 != $str2 ] 字符串不相同，则为真
#[[ -z $str1 ]] 是否是空字符串，则返回真
#[[ -n $str1 ]] 是否包含非空字符串，则返回真

str1="Not empty"
str2=""
if [[ -n $str1 ]] && [[ -z $str2 ]];then
    echo str1  is noneempty string and str2 is empty string.
fi

#test命令进行条件检测
var=0
if [ $var -eq 0 ]; then echo "True"; fi
#更换为test命令写法
if test $var -eq 0 ;then echo "True"; fi
