#!/bin/bash

expected1=$(cat popular-names.txt | cut -f 1)
expected2=$(cat popular-names.txt | cut -f 2)
stack runghc 12.hs popular-names.txt
output1=$(cat col1.txt)
output2=$(cat col2.txt)
res=1

if [ "$output1" != "$expected1" ]; then
    echo "NG col1"
    res=0
fi

if [ "$output2" != "$expected2" ]; then
    echo "NG col2"
    res=0
fi

rm col*.txt

if [ $res -ne 1 ]; then
    exit 1
fi

echo "OK"
