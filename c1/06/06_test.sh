#!/bin/bash

expected=`cat << DOC
["ad","ap","ap","ar","ar","ar","di","is","pa","pa","pa","ra","ra","ra","se"]
["ag","ap","ar","gr","pa","ph","ra","ra"]
["ad","ag","ap","ar","di","gr","is","pa","ph","ra","se"]
["ap","ar","pa","ra"]
["ad","di","is","se"]
True
False
DOC`


output=$(stack runghc 06.hs)

if [ "$output" != "$expected" ]; then
    echo "NG"
    echo "expected"
    echo "$expected"
    echo "output"
    echo "$output"
    exit 1
fi

echo "OK"


