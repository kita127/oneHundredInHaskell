#!/bin/bash

runtest(){
    expected=$(head -n $1 popular-names.txt)
    output=$(stack runghc 14.hs $1 popular-names.txt)

    if [ "$output" != "$expected" ]; then
        echo "NG"
        echo "$output"
        exit 1
    fi
}

runtest 1
runtest 3
runtest 10
runtest 99

echo "OK"

