#!/bin/bash

# "I am an NLPer"
# ['I am', 'am an', 'an NLPer']
# ['Ia', 'am', 'ma', 'an', 'nN', 'NL', 'LP', 'Pe', 'er']

runtest() {
    output=$(stack runghc 05.hs "$1")
    if [ "$output" != "$2" ]; then
        echo "NG"
        echo "$output"
        exit 1
    fi
}

expected=$(echo '["I am","am an","an NLPer"]' && echo '["Ia","am","ma","an","nN","NL","LP","Pe","er"]')
input="I am an NLPer"
runtest "$input" "$expected"

echo "OK"
