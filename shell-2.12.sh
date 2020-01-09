#!/bin/bash
#根据扩展名切分文件名,使用%操作符，方便的提取 名称.扩展名
file_jpg="sample.jpg"
name=${file_jpg%.*}
echo FILE NAME is : $name #这样就只提取了文件名，删掉了后缀，利用%操作符

extension=${file_jpg#*.}
echo FILE NAME is :$extension #这样就提取出后缀名了，利用#操作符

#{VAR%.*} 从$VAR中删除位于%后的通配符所匹配的字符串，如上是.* 从右向左匹配。
#{VAR#*.} 从$VAR中删除位于#右侧的通配符所匹配的字符串，如上是 *. 从左向右匹配

newname="a.bcdefg"
qian=${newname%d*}
echo $qian
hou=${newname#?d}
echo $hou
#如上测试，可以看出操作符后就是用来做分隔的字符

#贪婪模式，使用%%,##就会重复移除匹配到的字符后的分隔字符。例比较适合提取后缀名。
url="www.google.com.cn"
newurl=${url##*.}
echo $newurl #仅匹配到cn
newurlname=${url%%.*}  
echo $newurlname #仅匹配到www

realurl=${url#*.}
echo $realurl  #匹配到google.com.cn
realurlhou=${url%.*}
echo $realurlhou  #匹配到www.google.com

