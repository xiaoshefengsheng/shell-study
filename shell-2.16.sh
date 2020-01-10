#!/bin/bash
PIDSRRAY=()
for file in file1.iso file2.iso
do
  md5sum $file &
  PIDSRRAY+=("$!")
done
wait ${PIDSRRAY[@]}
