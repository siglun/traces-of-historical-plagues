#
# Searches
#
set xlabel "Week"
set ylabel "Occurence"

plot 'weekly_counts.txt' using 1:2 w l t "kolera + cholera", 'weekly_counts.txt' using 1:5 w l t "epidemi" , 'weekly_counts.txt' using 1:6 w l t "pest"


# , 'weekly_counts.txt' using 1:6 w l t "farsot"
