#!/bin/bash

mkdir -p "$1"
cd "$1" || exit

for ((i = 0; i < 5; i++)); do
    touch "file$i.txt"
done

echo "=== 압축하기 ==="
tar -czf files.tar.gz file0.txt file1.txt file2.txt file3.txt file4.txt

echo "=== 압축파일 생성 확인 ==="
ls

mkdir -p extracted

echo "=== 새 폴더에 압축 해제 ==="
tar -xzvf files.tar.gz -C extracted

echo "=== 압축 해제 결과 ==="
ls extracted
