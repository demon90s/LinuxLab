#! /bin/bash

echo "enter age: "
read age

function f_one_way
{
    if [ "$age" -lt 0 ] || [ "$age" -gt 150 ]
    then
        echo "wrong age"
    elif [ "$age" -ge 0 ] && [ "$age" -lt 4 ]
    then
        echo "baby"
    elif ! [ "$age" -lt 4 ]
    then
        echo "age >= 4"
    fi
}

function f_another_way
{
    # -o 或
    # -a 与
    
    if [ "$age" -lt 0 -o "$age" -gt 150 ]
    then
        echo "wrong age"
    elif [ "$age" -ge 0 -a "$age" -lt 4 ]
    then
        echo "baby"
    elif ! [ "$age" -lt 4 ]
    then
        echo "age >= 4"
    fi
}

#f_one_way
f_another_way