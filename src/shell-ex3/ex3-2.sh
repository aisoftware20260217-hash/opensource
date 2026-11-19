#!/bin/bash

read -p "계산할 값의 개수(2 이상): " count

for ((i = 1; i <= count; i++)); do
    read -p "$i 번째 x 값: " x

    awk -v x="$x" 'BEGIN {
        printf "x = %g, y = %.4f\n", x, 0.5 * x * x
    }'
done

