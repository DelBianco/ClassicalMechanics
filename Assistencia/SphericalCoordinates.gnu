#!/usr/bin/gnuplot
#
# Explaining the 3D paramteric plotting
#
# AUTHOR: Hagen Wierstorf
# VERSION: gnuplot 4.6 patchlevel 0

reset

set terminal pngcairo enhanced
set output 'SphericalCoordinates.png'

# color definitions



set style line 1 lc rgb '#8b1a0e' pt 1 ps 2 lt 2 lw 2 # --- red
set style line 2 lc rgb '#5e9c36' pt 1 ps 2 lt 2 lw 2 # --- green
set style line 3 lc rgb '#008B8B' pt 1 ps 2 lt 2 lw 2 # --- blue
set style line 5 lc rgb '#F9C96D' pt 1 ps 2 lt 2 lw 2 # --- brown
set style line 4 lc rgb '#a3a3a3' pt 1 ps 2 lt 2 lw 2 # --- gray

unset key; unset tics
set lmargin screen 0.18
set rmargin screen 0.98
set tmargin screen 0.88
set bmargin screen 0.28

set view 37,11,1,1

# Arrows

h = sqrt(2)

set arrow from 0,0,0 to 1,1,h front ls 1
set arrow from 1,1,0 to 1,1,h nohead ls 4
set arrow from 0,0 to 1,1 nohead back ls 4
set arrow from 1,0 to 1,1 nohead back ls 4 
set arrow from 0,1 to 1,1 nohead back ls 4

# Labels
set label '{/Symbol f}' at 0.3,0.13,0 textcolor ls 2
set label '{/Symbol q}' at 0.09,0.1,0.5 textcolor ls 3
set label 'r' at 0.6,0.6,1.1 textcolor ls 1
set label 'r cos({/Symbol q})' at 0.5,0.4,0 rotate by 12 textcolor ls 4
set label 'r cos({/Symbol q}) cos({/Symbol f})' at 0.48,1.1,0 rotate by -4 textcolor ls 4
set label 'r cos({/Symbol q}) sin({/Symbol f})' at 1.05,0.1,0 rotate by 67 textcolor ls 4
set label 'r sin({/Symbol q})' at 1.05,1,0.4 rotate by 90 textcolor ls 4

set parametric

set grid

set xtic
set ytic

set xrange [0:1.2]
set yrange [0:1.2]
set zrange [0:1.2]

set xyplane at 0

set urange [pi:pi/4]
set vrange [0:pi/4]

# Angle between r' and x axis
r0 = 0.4
fvx(v) = r0*cos(v)
fvy(v) = r0*sin(v)

fvz = 0
set size ratio 2

# Angle between r and r'
r = 0.4
fux(u) = r*cos(u)*cos(pi/4)
fuy(u) = r*cos(u)*sin(pi/4)
fuz(u) = r*sin(u)

set rmargin at screen 0.9

set tics textcolor rgb '#ffffff'

splot fvx(v),fvy(v),fvz ls 2,fux(u),fuy(u),fuz(u) ls 3
