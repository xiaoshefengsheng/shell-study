#!/bin/bash
#数组和关联数组,索引从0开始
array_var=(a1 a2 a3 a4 a5 a6)
echo ${array_var[3]}
index=1
echo ${array_var[$index]}
#以清单形式打印出
echo ${array_var[*]}
echo ${array_var[@]}
#打印长度,元素个数
echo ${#array_var[*]}

#关联数组
declare -A fruits_value
fruits_value=([apple]='100dollars' [orange]='150dollars')
echo "Apple costs ${fruits_value[apple]}"

#列出数组索引
echo ${!fruits_value[*]}
echo ${!fruits_value[@]}
echo ${!array_var[*]}
