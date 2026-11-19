#!/bin/bash

mkdir -p "$1"
cd "$1" || exit

for ((i = 0; i < 5; i++)); do
    touch "file$i.txt"
    mkdir -p "file$i"
    ln -s "../file$i.txt" "file$i/file$i.txt"
    ls -l "file$i/file$i.txt"
done
