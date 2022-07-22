#!/bin/sh

./cholera_i

gnuplot < plot.gp
gnuplot < plot_weekly.gp

# ./make_trigrams.s

./plot_cholera_in > cholera_i.ms
./plot_cholera_in er > cholera_er.ms
./plot_cholera_in har > cholera_har.ms
./plot_cholera_in havde > cholera_havde.ms

./trigrams_to_bar_diagram > dia.ms

groff -ms -U -s  -p  -P-pa4 -Tps parameters.ms text.ms parameters2.ms dia.ms > bar_diagram.ps
groff -ms -U -s -p  -P-pa4 -Tps parameters.ms text.ms parameters2.ms > paper_only.ps
ps2pdf  bar_diagram.ps
ps2pdf  paper_only.ps
