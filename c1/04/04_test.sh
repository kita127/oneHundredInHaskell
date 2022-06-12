#!/bin/bash


#     1  2  3    4       5     6     7   8       9         10  11      12    13   14   15    16       17      18     19   20
#     x                  x     x     x   x       x                                     x     x                       x
#     H  He Li   Be      B     C     N   O       F         Ne  Na      Mi    Al   Si   P     S        Cl      Ar     K    Ca

output=$(stack runghc 04.hs)
expected='[("H",1),("He",2),("Li",3),("Be",4),("B",5),("C",6),("N",7),("O",8),("F",9),("Ne",10),("Na",11),("Mi",12),("Al",13),("Si",14),("P",15),("S",16),("Cl",17),("Ar",18),("K",19),("Ca",20)]'

if [ "$output" != "$expected" ]; then
    echo "NG"
    exit 1
fi

echo "OK"





