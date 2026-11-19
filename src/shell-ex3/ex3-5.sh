#!/bin/bash

show_files() {
    ls "$@"
}

show_files "$@"

while true; do
    echo "1) 사용자 정보"
    echo "2) CPU 사용률"
    echo "3) 메모리 사용량"
    echo "4) 디스크 사용량"
    echo "5) 종료"
    read -p "메뉴 선택: " menu

    case "$menu" in
        1) id ;;
        2) top -b -n 1 | head -n 12 ;;
        3) free -h ;;
        4) df -h ;;
        5) break ;;
    esac
done
