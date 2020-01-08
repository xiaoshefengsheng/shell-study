#!/bin/bash
#校验和核实，常用的为md5sum,sha1sum
#md5sum filename >file_sum.md5  #生成md5值并保存到.md5/.sha1的文件，方便将来核实
#sha1sum filename >file_sum.sha1
#核实
#md5sum -c file_sum.md5          #可以使用*.md5 /*.sha1文件去批量核验，文件里包含了计算的md5值及文件名
#sha1sum -c file_sum.sha1
#对目录进行校验,-r递归，-l相对路径
#md5deep -rl directory_path > directory.md5
#find directory_path -type f -print0 | xargs md5sum >>directory.md5
#md5sum -c directory.md5  
