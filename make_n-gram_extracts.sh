#!/bin/sh

for file in bigrams/*.text
do
    week=$(echo $file| tr -d '[:alpha:][:punct:]')
    echo $file
    cat $file  | sort -n | tail -50 > "./bigrams/$week.extract"

done    

