#
# Searches
#
set xlabel "Week"
set ylabel "Occurence"

set ter eps

set out "words_by_week.eps"

set monochrome 

# set log y

plot 'weekly_counts.txt' using 1:2 w l t "kolera + cholera", 'weekly_counts.txt' using 1:5 w l t "epidemi" , 'weekly_counts.txt' using 1:6 w l t "pest"


# , 'weekly_counts.txt' using 1:6 w l t "farsot"
