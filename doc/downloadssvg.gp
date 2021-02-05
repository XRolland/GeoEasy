#!/usr/bin/gnuplot
#
# Plotting downloads statistics (see downloads.txt)
#
# AUTHOR: zvezdochiot

set terminal svg size 950,520 font "Verdana,12"

set title 'Downloads 2017 October - 2021 January'
set xlabel ' '
set ylabel 'Count'

set key invert reverse Left outside
set key autotitle columnheader
set auto x
unset xtics
set xtic rotate by 45 scale 0 offset character -4,-2.5

set style data histogram
set style histogram rowstacked
set style fill solid border -1
set boxwidth 0.75

set output 'downloads.svg'
plot for [i=2:9] 'downloads.txt' using i:xtic(1)

# set terminal xterm
# replot
