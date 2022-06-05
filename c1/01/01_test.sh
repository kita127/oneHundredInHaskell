#!/bin/bash

runtest() {
    output=$(stack runghc "$1")
    if [ "$output" != "$2" ]; then
        echo "NG expected $2, but got $output"
        exit 1
    fi
}

runtest '01.hs' 'パトカー'

echo OK
