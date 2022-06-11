#!/bin/bash

split -l 1000 popular-names.txt x
stack runghc 16.hs 1000 popular-names.txt

result=0

# ファイルの中身の確認
expected=$(cat x*)
output=$(cat y*)
if [ "$output" != "$expected" ]; then
    echo "NG : cat"
    result=1
fi

# ファイルの情報確認
expected=$(cat x* | wc)
output=$(cat y* | wc)
if [ "$output" != "$expected" ]; then
    echo "NG : wc"
    result=1
fi

rm x*
rm y*

if [ $result -ne 0 ]; then
    exit 1
fi

echo "OK"
