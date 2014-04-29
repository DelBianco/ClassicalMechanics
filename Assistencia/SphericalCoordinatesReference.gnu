#!/usr/bin/gnuplot
#
# Plotting a sphere with Gnuplots parametric mode
#
# AUTHOR: Hagen Wierstorf
# VERSION: gnuplot 4.6 patchlevel 0

reset

set terminal pngcairo enhanced
set output 'SphericalCoordinatesReference.png'

# Style definitions
set border lw 0.3

set style line 1 lc rgb '#8b1a0e' pt 1 ps 2 lt 2 lw 2 # --- red
set style line 2 lc rgb '#5e9c36' pt 1 ps 2 lt 2 lw 2 # --- green
set style line 3 lc rgb '#A9BDE6' pt 1 ps 2 lt 2 lw 2 # --- blue
set style line 4 lc rgb '#F9C96D' pt 1 ps 2 lt 2 lw 2 # --- brown
set style line 5 lc rgb '#c3c3c3' pt 1 ps 2 lt 2 lw 2 # --- gray

# Radius
r = 1.0
theta = pi/4
phi = pi/4

x = r*cos(theta)*cos(phi)
y = r*cos(theta)*sin(phi)
z = r*sin(theta)

unset tics
unset border

set xrange [0:1]
set yrange [0:1]
set zrange [0:1]

set label 'r' at 0.2,0.2,0.5 textcolor ls 1
set arrow from 0,0,0 to x,y,z front ls 1

splot 0 w d lc rgb '#ffffff' notitle
