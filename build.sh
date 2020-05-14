#!/bin/sh

# ./cholera_i

gnuplot < plot.gp
gnuplot < plot_weekly.gp

# ./make_trigrams.s
./plot_cholera_in > cholera.ms
./trigrams_to_bar_diagram > dia.ms
groff -ms -s  -p  -P-pa4 -Tps parameters.ms text.ms parameters2.ms cholera.ms dia.ms > bar_diagram.ps
groff -ms  -p  -P-pa4 -Tps parameters.ms text.ms parameters2.ms cholera.ms > paper_only.ps
ps2pdf  bar_diagram.ps
ps2pdf  paper_only.ps
