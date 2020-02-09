#! /bin/bash

# -f 表示文件存在
if [ -f /bin/bash ]
then
    echo "file /bin/bash exists"
fi

# -d 表示目录存在
if [ -d /bin/bash ]
then
    echo "/bin/bash is a directory"
else
    echo "/bin/bash is not a directory"
fi

# -z 表示字符串为空
if [ -z $FOO ]
then
    echo "empty string"
fi

# -n 表示字符串非空
[ -n "Hi" ] && echo "string not empty"

# ! 取反
[ ! -n "Hi" ] && echo "string empty" || echo "string not empty"

# 自定义函数
is_odd()
{
    local n=$(($1 % 2))
    if [ "$n" = "1" ]; then
        return 0    # 返回0表示真
    else
        return 1    # 表示假
    fi
}

if is_odd 8; then
    echo "is odd num"
else
    echo "is not odd num"
fi

exit 0
