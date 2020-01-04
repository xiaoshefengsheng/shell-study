#!/bin/bash
#使用shell进行数学运算
#1.定义变量赋值为数字
no1=4;
no2=8;

#2.let命令可以直接执行基本算数操作，使用let，变量前不需要加$
let result=no1+no2
echo $result
#自加操作,即 no1=no1+1
let no1++
echo $no1
#自减操作,即 no1=no1-1
let no2--
echo $no2
#简写形式
let no+=6
echo $no
let no-=6
echo $no
#其他操作方法，如[]使用方法与let类似
result=$[ no1 + no2 ]
echo $result
result=$[ $no1 + 5 ]
echo $result

result=$(( no1 + 50 ))
echo $result

result=`expr 3 + 4`
echo $result
result=$(expr $no1 + 5 )
echo $result

#3.bc工具是一个用于数学运算的高级工具，这个精密计算器包含了大量的选项。我们可以借助它执行浮点数运算并应用一些高级函数,bc可能需要yum安装下。
echo "4 * 0.56" |bc
no=54;
result=`echo "$no * 1.5" |bc`
echo $result
#设置小数精度,将scale=2设置小数个位2，输出两位小数的数值
echo "scale=2;3/8" | bc
#进制转换
no=100
echo "obase=2;$no" | bc

no=1100100
echo "obase=10;ibase=2;$no" |bc
#计算平方以及平方根
echo "sqrt(100)" |bc  #square root
echo "10^10" |bc #square
