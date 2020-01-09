#!/bin/bash
#批量重命名和移动，rename 命令重命名文件，结合find,rename,mv可以根据前缀或后缀批量重命名
#实例：重命名.jpg和.png文件
count=1;
for img in `find /tmp -iname '*.png' -o -iname '*.jpg' -type f -maxdepth 1`
do 
    new=image-$count.${img##*.}

    echo "Renaming $img to $new"
    mv "$img" "new"
    let sount++
done
