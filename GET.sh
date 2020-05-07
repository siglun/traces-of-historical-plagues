#!/bin/bash

URIs=(
    "https://loar.kb.dk/bitstream/handle/1902/279/artikler_1846.csv" 
    "https://loar.kb.dk/bitstream/handle/1902/280/artikler_1847.csv"
    "https://loar.kb.dk/bitstream/handle/1902/281/artikler_1848.csv"
    "https://loar.kb.dk/bitstream/handle/1902/282/artikler_1849.csv"
    "https://loar.kb.dk/bitstream/handle/1902/284/artikler_1850.csv"
    "https://loar.kb.dk/bitstream/handle/1902/285/artikler_1851.csv"
    "https://loar.kb.dk/bitstream/handle/1902/286/artikler_1853.csv"
    "https://loar.kb.dk/bitstream/handle/1902/287/artikler_1854.csv"
    "https://loar.kb.dk/bitstream/handle/1902/288/artikler_1855.csv"
    "https://loar.kb.dk/bitstream/handle/1902/290/artikler_1856.csv"
    "https://loar.kb.dk/bitstream/handle/1902/291/artikler_1857.csv"
    "https://loar.kb.dk/bitstream/handle/1902/292/artikler_1858.csv"
    "https://loar.kb.dk/bitstream/handle/1902/293/artikler_1859.csv"
    "https://loar.kb.dk/bitstream/handle/1902/294/artikler_1860.csv"
)

for uri in ${URIs[@]}; do
    file=$(echo $uri | perl -pe 's/^.*artikler/artikler/g')
    op="GET $uri>$file"
    echo "$op"
done
