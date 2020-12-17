#! /bin/bash

set -e

# 使得 HELLO 这个变量可以在子脚本中被使用
export HELLO="hello world, hi bash"

sh export_child.sh