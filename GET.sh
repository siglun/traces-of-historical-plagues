#!/bin/sh

PREFIX="https://loar.kb.dk/bitstream/handle/1902/282/"
SUFFIX="?sequence=1&isAllowed=y"

for i in $(seq 1849 1859); do
    file="artikler_$i.csv";
    op="GET '$PREFIX$file$SUFFIX'>$file"
    echo "$op";
done
