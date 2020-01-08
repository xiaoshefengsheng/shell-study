#!/bin/bash
#使用tr进行转换
echo "HELLO WORLD IS THIS" | tr 'A-Z' 'a-z'  #大写字母转换为小写字母
#实现加密字符的功能，如下替换
echo 12345 | tr '0-9' '9876543210'
echo 87654 | tr '9876543210' '0-9'
#著名的ROT13加密方法就可以使用tr实现,因为字母刚好为两次13（共26个字母），所以可以再次使用转换回去。
echo "tr came, tr saw, tr conquered." | tr 'a-zA-Z' 'n-za-mN-ZA-M'
echo "ge pnzr, ge fnj, ge pbadhrerq." | tr 'a-zA-Z' 'n-za-mN-ZA-M'

#tr的其他参数用法。 -d删除字符集合
cat /tmp/args.txt | tr -d 'ag'
echo "hello 123 world 456" | tr -d '0-9'
#字符集补集 -c参数使用set1补集，补集就是集合中包含set1中没有的所有字符。
echo "hello 1 char 2 next 4" |tr -d -c '0-9 \n' #如命令，补集为不包含数字的的所有字符，然后-d为删除该集合字符，所以就只剩数字了。
#tr压缩字符，-s压缩
echo "GNU is    not         unix. recursive right?" | tr -s ' '  #命令压缩了重复的空格字符，使得文本更美观

#使用tr实现对文件中的数字进行计算求和,使用子shell进行替换，$[ ]进行计算，因为多一个+字符，所以最后添加一个0
cat <<EOF >/tmp/sum.txt
1
2
3
4
EOF

cat /tmp/sum.txt | echo $[ $(tr '\n' '+') 0]
#字符类集合
#  alnum:字母和数字
#  alpha:字母
#  cntrl:控制（非打印）字符
#  digit:数字
#  graph:图形字符
#  lower:小写字母
#  upper:大写字母
#  space:空白字符
#  print:可打印字符
#  xdigit:十六进制数字
#  punct:标点符号
