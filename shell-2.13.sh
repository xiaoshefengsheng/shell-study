#!/bin/bash
#批量重命名和移动，rename 命令重命名文件，结合find,rename,mv可以根据前缀或后缀批量重命名
#实例：重命名.jpg和.png文件,实现批量重命名操作，利用count++自增数字,-o指有多个匹配条件，-maxdepth目录深度
count=1;
for img in `find /tmp -iname '*.png' -o -iname '*.jpg' -type f -maxdepth 1`
do 
    new=image-$count.${img##*.}

    echo "Renaming $img to $new"
    mv "$img" "/tmp/$new"
    let count++
done

#rename操作
#rename *.JPG *.jpg  #重命名大写后缀为小写后缀
#rename 's/ /_/g' *  #重命名文件名中的空格字符为_字符
#rename 'y/A-Z/a-z/' *  #替换对应的大写字母为小写
#rename 'y/a-z/A-Z/' *  #替换小写为大写

#替换所有.mp3文件移入给定的目录
find path -type f -name "*.mp3" -exec mv {} target_dir \;
#将所有文件名中的空格替换为字符"_":
find path -type f -exec rename 's/ /_/g' {} \;
