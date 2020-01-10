#!/bin/bash
#交互输入自动化
#先写一个交互式脚本，然后修改为自动化输入
read -p "enter number:" no ;
read -p "enter name :" name 
echo you have entered $no $name
#echo -e "2\nxiaoshe\n" | sh shell-2.15.sh  #用echo的方式可以直接传入参数
#echo -e "2\nxiaoshe\n" >/tmp/input.data
#./shell-2.15.sh </tmp/input.data  #用文件重定向的方法也可以实现交互输入

