#!/bin/bash

# 引数x, y, zを受け取り「x時のyはz」という文字列を返す関数を実装せよ．
# さらに，x=12, y=”気温”, z=22.4として，実行結果を確認せよ．

runtest(){
    expected="$1"
    output=`stack runghc 07.hs "$2" "$3" "$4"`
    if [ "$output" != "$expected" ]; then
        echo "NG"
        echo "expected"
        echo "$expected"
        echo "got"
        echo "$output"
        exit 1
    fi
}

runtest "12時の気温は22.4" 12 気温 22.4

echo "OK"
