#!/bin/bash
#如下两种方法都支持定义函数
#function fname()
#{
#    statements;
#}
#fname()
#{
#    statements;
#}
#fname arg1 arg2 传递参数
fname()
{
    echo $1 $2; #访问参数1和参数2
    echo "$@"; #以列表方式一次性打印所有参数
    echo "$*"; #类似于$@，但是参数被作为单个实体
    return 0; #返回值
}

#测试$? 是否执行成功的推出状态返回值。正常为0，否则为非0
CMD="$(/usr/bin/echo "aa" >>/tmp/a.txt )"
$CMD
if [ $? -eq 0 ];
then
    echo "$CMD executed successfully"
else
    echo "$CMD terminated unsuccessfully"
fi
