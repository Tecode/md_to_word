#!/bin/bash


# \a	警告字符，通常为ASCII的BEL字符
# \b	后退
# \c	抑制（不显示）输出结果中任何结尾的换行字符（只在%b格式指示符控制下的参数字符串中有效），而且，任何留在参数里的字符、任何接下来的参数以及任何留在格式字符串中的字符，都被忽略
# \f	换页（formfeed）
# \n	换行
# \r	回车（Carriage return）
# \t	水平制表符
# \v	垂直制表符
# \\	一个字面上的反斜杠字符
# \ddd	表示1到3位数八进制值的字符。仅在格式字符串中有效
# \0ddd	表示1到3位的八进制值字符

printf "%-10s %-10s %-10s %-10s \n" 姓名 性别 年龄 身高
printf "%-10s %-10s %-10s %-10.2f \n" 憨憨 女 23 163.5
printf "%-10s %-10s %-10s %-10.2f \n" 素素 女 23 170.2