#!/bin/bash
#分隔符IFS默认为空格或换行或tab制表符，csv为','分割符。 使用迭代即循环，对有分隔符的文本进行循环处理。
#data="name sex rollno location"
#data="name,sex,rollno,location"
#oldIFS=$IFS  #存储原始的IFS值
#IFS=,  #赋值IFS为,
#for item in $data;
#do
#    echo "Item: $item"  #此时再去分割打印，则按照,分割了。
#done
#IFS=$oldIFS         #恢复原始的IFS值

#例2，分割文本，并按字段顺序需要格式化输出，以用户密码文件为例
#line="root:x:0:0:root:/root:/bin/bash"
#oldIFS=$IFS;
#IFS=":"
#count=0
#for item in $line;
#do
#    [ $count -eq 0 ] && user=$item
#    [ $count -eq 6 ] && shell=$item
#    let count++
#done;
#echo $user\'s shell is $shell;
#IFS=oldIFS #这个如果在上面，会造成$user的oo两个字母出不来,最后执行恢复即可。

#for循环一个列表,逐行打印一个字符
#for i in {a..z}; do echo $i; done
#for ((i=0;i<10;i++))
#{
#    echo $i
#}
#while循环
#while true;
#do
#    echo hello
#done

#until循环，只有为真时才停止
x=0;
until [ $x -eq 9 ]
do
let x++; echo $x;
done
