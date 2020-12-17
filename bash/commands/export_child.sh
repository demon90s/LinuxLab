#! /bin/bash

# 如果通过运行 export.sh 来调用 export_child.sh
# 那么 HELLO 变量可以继承，因为在 export_child.sh 中它被 export

set -e

echo "I am export_child"

echo "HELLO="${HELLO}

echo "export_child end"