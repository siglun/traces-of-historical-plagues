#!/bin/sh

for file in bigrams/*.text
do
    week=$(echo $file| tr -d '[:alpha:][:punct:]')
    
    cat $file  | sort -d | uniq -c | sort -n | tail -50 | sort rn > "./bigrams/$week.extract"

done    

