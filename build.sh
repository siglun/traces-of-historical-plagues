#!/bin/sh

 gnuplot < plot.gp

# ./make_trigrams.sh
./trigrams_to_bar_diagram > dia.ms
groff -ms  -p  -P-pa4 -Tps parameters.ms text.ms dia.ms parameters2.ms > bar_diagram.ps
ps2pdf  bar_diagram.ps
