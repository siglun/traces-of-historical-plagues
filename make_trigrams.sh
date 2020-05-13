#!/bin/sh

for file in weekly/*.text
do
    week=$(echo $file| tr -d '[:alpha:][:punct:]')
    
    ./trigram $file  | egrep '(epidemi)|(kolera)|(cholera)' | egrep -v '[[:punct:][:digit:]]+' | iconv -tISO-8859-1 -fUTF-8  | sort -d | uniq -c | sort -n > "./trigrams/$week.text"
    ./bigram  $file  | egrep '(epidemi)|(kolera)|(cholera)' | egrep -v '[[:punct:][:digit:]]+' | iconv -tISO-8859-1 -fUTF-8  | sort -d | uniq -c | sort -n  >  "./bigrams/$week.text"

done    

