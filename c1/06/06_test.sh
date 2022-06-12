#!/bin/bash

expected=`cat << DOC
["pa","ar","ra","ap","pa","ar","ra","ap","pa","ar","ra","ad","di","is","se"]
["pa","ar","ra","ag","gr","ra","ap","ph"]
["pa","ar","ra","ap","ad","di","is","se","ag","gr","ph"]
["ap","ar","pa","ra"]
True
False
DOC`

output=$(stack runghc 06.hs)

if [ "$output" != "$expected" ]; then
    echo "NG"
    exit 1
fi

echo "OK"
