#!/bin/bash
#文本文件的交集与差集
cat <<EOF >/tmp/A.txt
apple
orange
gold
silver
steel
iron
EOF

cat <<EOF >/tmp/B.txt
orange
gold
cookies
carrot
EOF
#排序并将排序后的文件-o保存覆盖源文件
sort /tmp/A.txt -o /tmp/A.txt; sort /tmp/B.txt -o /tmp/B.txt

comm /tmp/A.txt /tmp/B.txt #输出的第一列包含只在A文件出现的行，第二列包含只在B文件出现的行，第三列包含A和B相同的行。 各列以\t制表符作为定界符。
comm /tmp/A.txt /tmp/B.txt -1 -2  #为了打印两个文件的交集，删除第一，二列，只打印第三列
comm /tmp/A.txt /tmp/B.txt -3 #打印两文件不相同的行
comm /tmp/A.txt /tmp/B.txt -3 |sed 's/^\t//'  #规范化输出，删除空白字符
comm /tmp/A.txt /tmp/B.txt -2 -3  #这是A文件的差集
comm /tmp/A.txt /tmp/B.txt -1 -3  #这是B文件的差集
