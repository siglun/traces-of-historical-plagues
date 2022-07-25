#!/bin/sh

./cholera_i
./cholera_i er
./cholera_i har
./cholera_i havde

gnuplot < plot.gp
gnuplot < plot_weekly.gp

ps2pdf  -dEPSCrop  articles_by_year.eps
ps2pdf  -dEPSCrop  words_by_week.eps

# ./make_trigrams.s

./plot_cholera_in > cholera_i.ms
./plot_cholera_in er > cholera_er.ms
./plot_cholera_in har > cholera_har.ms
./plot_cholera_in havde > cholera_havde.ms

./trigrams_to_bar_diagram > dia.ms

groff -ms  -m pdfpic -m pdfmark   -U -s  -p  -P-pa4 -Tpdf  parameters.ms text.ms parameters2.ms dia.ms > bar_diagram.pdf
groff -ms   -m pdfpic -m pdfmark  -U -s -p  -P-pa4 -Tpdf parameters.ms text.ms parameters2.ms > paper_only.pdf

