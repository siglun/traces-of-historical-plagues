#!/bin/sh

gnuplot < plot.gp
gnuplot < plot_weekly.gp

# ./make_trigrams.sh
./trigrams_to_bar_diagram > dia.ms
groff -ms  -p  -P-pa4 -Tps parameters.ms text.ms dia.ms  > bar_diagram.ps
groff -ms  -p  -P-pa4 -Tps parameters.ms text.ms > paper_only.ps
ps2pdf  bar_diagram.ps
ps2pdf  paper_only.ps
