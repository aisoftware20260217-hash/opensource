#!/bin/bash

scores=()
sum=0
count=0

while true; do
    echo "1) 과목 성적 추가"
    echo "2) 입력된 모든 점수 보기"
    echo "3) 평균 점수 확인"
    echo "4) 평균 등급 변환"
    echo "5) 종료"
    read -p "메뉴 선택: " menu

    case "$menu" in
        1)
            read -p "점수: " score
            scores+=("$score")
            sum=$((sum + score))
            count=$((count + 1))
            ;;
        2)
            echo "전체 점수: ${scores[*]}"
            ;;
        3)
            awk -v s="$sum" -v n="$count" 'BEGIN {
                printf "평균 점수: %.2f\n", s / n
            }'
            ;;
        4)
            if [ "$sum" -ge "$((90 * count))" ]; then
                echo "평균 등급: A"
            else
                echo "평균 등급: B"
            fi
            ;;
        5)
            echo "종료합니다."
            break
            ;;
    esac
done
