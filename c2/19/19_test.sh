#!/bin/bash

# cat popular-names.txt | cut -f 1 | sort | uniq -c | sort -k 1 -n -r | awk '{print $2}'

output=`stack runghc 19.hs popular-names.txt`
expected=`cat popular-names.txt | cut -f 1 | sort | uniq -c | sort -k 1 -n -r | awk '{print $2}'`
if [ "$output" != "$expected" ]; then
    echo "NG"
    exit 1
fi

echo "OK"
