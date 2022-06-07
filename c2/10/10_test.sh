#!/bin/bash

output=$(stack runghc 10.hs popular-names.txt)
expected=$(wc popular-names.txt)
if [ "$output" != "$expected" ]; then
    echo "NG expected"
    echo "$expected"
    echo "but got"
    echo "$output"
    exit 1
fi

echo "OK"


