#! /bin/bash

declare -r PI=3.14
echo $PI

PI=5.5  # 没有影响，会有一条警告 readonly variable
echo $PI # 继续执行