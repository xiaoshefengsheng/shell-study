#!/bin/bash
#临时文件命名与随机数
#创建临时文件,用echo显示创建的文件名
filename=`mktemp`
echo $filename

#创建临时目录,使用-d选项
dirname=`mktemp -d`
echo $dirname

#仅生成文件名，不创建真实的文件或目录
tempfile=`mktemp -u`
echo $tempfile

#根据模板创建临时文件名：如下根据文件名前缀不变，后面的x根据需求选择位数，最少三位，会自动替换为随机字符
#mktemp test.xxx
