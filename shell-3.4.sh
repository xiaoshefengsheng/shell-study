#!/bin/bash
#查找并删除重复文件
echo "hello" >/tmp/test ; cp /tmp/test /tmp/test_copy1 ; cp /tmp/test /tmp/test_copy2;
echo "next" >/tmp/other;

#脚本
ls -lS /tmp/ --time-style-long-iso |awk 'BEGIN {
  getline; getline;
  name1=$8; size=$5
}
{
  name2=$8;
  if (size==$5)
  {
    print name1; print name2
  }
};
  size=$5; name1=name2;
}' | sort -u >/tmp/duplicate_files

cat /tmp/duplicate_files |xargs -I {} md5sum {} |sort | uniq -w 32 |awk '{print "^"$2"$" }' |sort -u >duplicate_sample

echo Removing..
comm duplicate_files duplicate_sample -2 -3 | tee /dev/stderr |xargs rm
echo Removed duplicates files successfully

#1.使用ls -lS进行排序列出。2.使用awk进行删选，文件大小一致的。
