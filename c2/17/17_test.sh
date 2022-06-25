#!/bin/bash


expected=`cat popular-names.txt | cut -f 1 | sort | uniq | wc -l | awk '{print $1}'`
output=`stack runghc 17.hs popular-names.txt`
if [ "$output" != "$expected" ]; then
    echo "NG"
    exit 1
fi

echo "OK"
