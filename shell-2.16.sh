#!/bin/bash
PIDSRRAY=()
for file in file1.iso file2.iso
do
  md5sum $file &
  PIDSRRAY+=("$!")
done
wait ${PIDSRRAY[@]}
#使用 &使得程序放到后台去执行，避免脚本结束，命令未执行完成，用$!获取该条程序的PID号，并添加到 PIDSRRAY数组中，使用wait命令等待数组中所有的PID程序结束。
