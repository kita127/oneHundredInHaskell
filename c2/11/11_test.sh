#!/bin/bash

output=$(stack runghc 11.hs popular-names.txt)
expected=$(cat popular-names.txt | tr "\t" " ")
if [ "$output" != "$expected" ]; then
    echo "$output"
    echo "NG"
    exit 1
fi

echo "OK"
