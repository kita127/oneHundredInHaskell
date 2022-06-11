#!/bin/bash

#     1  2  3    4       5     6     7   8       9         10  11      12    13   14   15    16       17      18     19   20
#     x                  x     x     x   x       x                                     x     x                       x
#     H  e  i    e       B     C     N   O       F         e   a       i     l    i    P     S        l       r      K    a

output=$(stack runghc 04.hs)
expected='[("H",1),("e",2),("i",3),("e",4),("B",5),("C",6),("N",7),("O",8),("F",9),("e",10),("a",11),("i",12),("l",13),("i",14),("P",15),("S",16),("l",17),("r",18),("K",19),("a",20)]'

if [ "$output" != "$expected" ]; then
    echo "NG"
    exit 1
fi

echo "OK"
