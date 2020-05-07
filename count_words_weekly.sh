#!/bin/sh

# echo "#year\tkolera\tcholera\tepidemi\tpest\tfarsot" 
(for file in weekly/*.text
do
    week=$(echo $file| tr -d '[:alpha:][:punct:]')
    olera=$(egrep -i '(cholera)|(kolera)' $file | wc -l)
    kolera=$(grep -i kolera $file | wc -l)
    cholera=$(grep -i cholera $file | wc -l)
    epidemi=$(grep -i epidemi $file | wc -l)
    pest=$(grep -i pest $file | wc -l)
    farsot=$(grep -i farsot $file | wc -l)
    echo "$week\t$olera\t$kolera\t$cholera\t$epidemi\t$pest\t$farsot" 
done) | sort -n 

