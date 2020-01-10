#!/bin/bash
#拼写检查与词典操作
#ls /usr/share/dict/
#american-english  british-english

#使用aspell工具核查单词是否存在词典中
word=$1

output=`echo \"$word\" | aspell list`

if [ -z $output ]; then
    echo $word is a dictionary word;
else
    echo $word is not a dictionary word;
fi
