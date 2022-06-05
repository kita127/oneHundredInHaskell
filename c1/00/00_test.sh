#!/bin/bash

runtest() {
    output=$(stack runghc 00.hs)
    if [ "$output" != "$1" ]; then
        echo "NG expected $1, but got $output"
        exit 1
    fi
}

runtest 'desserts'

echo OK
