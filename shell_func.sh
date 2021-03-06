#!/bin/bash

# $#	传递到脚本或函数的参数个数
# $*	以一个单字符串显示所有向脚本传递的参数
# $$	脚本运行的当前进程ID号
# $!	后台运行的最后一个进程的ID号
# $@	与$*相同，但是使用时加引号，并在引号中返回每个参数。
# $-	显示Shell使用的当前选项，与set命令功能相同。
# $?	显示最后命令的退出状态。0表示没有错误，其他任何值表明有错误。

function fun(){
  echo "函数方法"
  echo "$1"
  echo "$2"
  return $(($1 + $2))
}

fun 50 30
echo "两数之和：$?"