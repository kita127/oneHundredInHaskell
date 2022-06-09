#!/bin/bash

expected=$(paste -d '\t' col1.txt col2.txt)
stack runghc 13.hs col1.txt col2.txt
output=$(cat output.txt)
if [ "$output" != "$expected" ]; then
    echo "NG"
    echo "$output"
    rm output.txt
    exit 1
fi

rm output.txt
echo "OK"
