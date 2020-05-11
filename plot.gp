#
# Searches
#
set xlabel "Year"
set ylabel "Occurence"

set ter eps

set out "articles_by_year.eps"

set monochrome 

plot 'counts.txt' using 1:2 w l t "kolera", 'counts.txt' using 1:3 w l t "cholera", 'counts.txt' using 1:4 w l t "epidemi", 'counts.txt' using 1:5 w l t "pest"
