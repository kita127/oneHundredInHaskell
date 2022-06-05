#!/bin/bash

output=$(stack runghc 02.hs)
if [ "$output" != "パタトクカシーー" ]; then
    echo "NG"
    exit 1
fi

echo OK
