#!/bin/bash

URIs=(
    "https://loar.kb.dk/bitstream/1902/279/1/artikler_1846.csv" 
    "https://loar.kb.dk/bitstream/1902/280/1/artikler_1847.csv"
    "https://loar.kb.dk/bitstream/1902/281/1/artikler_1848.csv"
    "https://loar.kb.dk/bitstream/1902/282/1/artikler_1849.csv"
    "https://loar.kb.dk/bitstream/1902/284/1/artikler_1850.csv"
    "https://loar.kb.dk/bitstream/1902/285/1/artikler_1851.csv"
    "https://loar.kb.dk/bitstream/1902/286/1/artikler_1852.csv"
    "https://loar.kb.dk/bitstream/1902/287/1/artikler_1853.csv"
    "https://loar.kb.dk/bitstream/1902/288/1/artikler_1854.csv"
    "https://loar.kb.dk/bitstream/1902/289/1/artikler_1855.csv"
    "https://loar.kb.dk/bitstream/1902/290/1/artikler_1856.csv"
    "https://loar.kb.dk/bitstream/1902/291/1/artikler_1857.csv"
    "https://loar.kb.dk/bitstream/1902/292/1/artikler_1858.csv"
    "https://loar.kb.dk/bitstream/1902/293/1/artikler_1859.csv"
    "https://loar.kb.dk/bitstream/1902/294/1/artikler_1860.csv"
)

for uri in ${URIs[@]}; do
    file=$(echo $uri | perl -pe 's/^.*artikler/artikler/g')
    op="GET $uri>$file"
    echo "$op"
done
