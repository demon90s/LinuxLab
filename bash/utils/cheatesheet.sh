#! /bin/bash

# 出现任何错误都直接退出
set -e

# Treat unset variables as an error
set -o nounset

# cd到本脚本所在的目录
# dirname获取目录名字
# lsof -p $$ 得到一系列的本程序打开的文件，其中包括本脚本
# 255r代表的是使用sh打开的脚本文件
# NF得到最后一列，即该脚本文件的路径
cd $(dirname `/usr/sbin/lsof -p $$ | gawk '$4 =="255r"{print $NF}'`)

# 获取当前时间点（年月日时分秒）
# 可能输出：20201217151447
date +"%Y%m%d%H%M%S"

# 获取本机IP
curl -s "whatismyip.akamai.com"