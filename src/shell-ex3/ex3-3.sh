#!/bin/bash

read -p "과목 수(2 이상): " count
sum=0

for ((i = 1; i <= count; i++)); do
    read -p "$i 번째 과목 점수: " score
    sum=$((sum + score))

    if [ "$score" -ge 90 ]; then
        echo "등급: A"
    else
        echo "등급: B"
    fi
done

awk -v s="$sum" -v n="$count" 'BEGIN {
    printf "평균 점수: %.2f\n", s / n
}'

if [ "$sum" -ge "$((90 * count))" ]; then
    echo "평균 등급: A"
else
    echo "평균 등급: B"
fi
