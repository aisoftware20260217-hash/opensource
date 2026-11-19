#!/bin/bash

a=$1
b=$2

echo "$a + $b = $((a + b))"
echo "$a - $b = $((a - b))"
echo "$a * $b = $((a * b))"

if [ "$b" -eq 0 ]; then
    echo "0으로 나눌 수 없습니다."
else
    echo "$a / $b = $((a / b))"
fi
