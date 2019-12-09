#! /bin/bash

string_equal()
{
    local lhs="$1"
    local rhs="$2"
    if [ "$lhs" = "$rhs" ]; then
        echo true
    else
        echo false
    fi
}

string_not_equal()
{
    local lhs="$1"
    local rhs="$2"
    if [ "$lhs" != "$rhs" ]; then
        echo true
    else
        echo false
    fi
}

string_empty()
{
    local str="$1"
    if [ -z "$str" ]; then
        echo true
    else
        echo false
    fi
}

string_not_empty()
{
    local str="$1"
    if [ -n "$str" ]; then
        echo true
    else
        echo false
    fi
}
