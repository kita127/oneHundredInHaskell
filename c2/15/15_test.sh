#!/bin/bash

runtest(){
    output=$(stack runghc 15.hs $1 popular-names.txt)
    expected=$(tail -n $1 popular-names.txt)
    if [ "$output" != "$expected" ]; then
        echo "NG"
        echo "$output"
        exit 1
    fi
}

runtest 10
runtest 99
runtest 1

echo "OK"
