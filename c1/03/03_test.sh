#!/bin/bash
# “Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics.

output=$(stack runghc 03.hs)
expected="[3,1,4,1,5,9,2,6,5,3,5,8,9,7,9]"
if [ "$output" != "$expected" ]; then
    echo "NG expected $expected, but got $output"
    exit 1
fi

echo "OK"
