#
# Searches
#
set xlabel "Week"
set ylabel "Length (characters)"

plot 'text_lengths_cholera_mean.text' using 1:2 w p
