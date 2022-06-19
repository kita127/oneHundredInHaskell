#!/bin/bash

output=`stack runghc 18.hs popular-names.txt`
expected=`cat popular-names.txt | sort -k 3 -n -r`

if [ "$output" != "$expected" ]; then
    echo "NG"
    echo "got"
    echo "$output"
    exit 1
fi

echo "OK"
