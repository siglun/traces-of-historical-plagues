#!/bin/sh

for file in weekly/*.text
do
    week=$(echo $file| tr -d '[:alpha:][:punct:]')
    
    ./filter.pl < $file | ./trigram | egrep '(epidemi)|(kolera)|(cholera)' | egrep -v '[[:punct:][:digit:]]+' | iconv -tISO-8859-1 -fUTF-8  | sort -d | uniq -c | sort -n > "./trigrams/$week.text"
    ./filter.pl < $file | ./bigram  | egrep '(epidemi)|(kolera)|(cholera)' | egrep -v '[[:punct:][:digit:]]+' | iconv -tISO-8859-1 -fUTF-8  | sort -d | uniq -c | sort -n | ./filter.pl >  "./bigrams/$week.text"

done    

