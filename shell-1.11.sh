#!/bin/bash
#脚本调试 -x,set -x set +x, 自定义DEBUG变量调试
#1. bash -x script.sh 正常执行调试，按行打出执行情况
#2. set -x set +x 定义调试区域，打出调试区域的调试信息，其他正常输出
for i in {1..6};
do 
    set -x 
    echo $i
    set +x 
done
echo "script executed"
#3.自定义格式显示调试信息
function DEBUG()
{
    [ "$_DEBUG" == "on" ] && $@ || :
}
for i in {1..10}
do 
    DEBUG echo $i
done
#4.修改脚本的第一行为 #!/bin/bash -xv 也可以启用调试了
