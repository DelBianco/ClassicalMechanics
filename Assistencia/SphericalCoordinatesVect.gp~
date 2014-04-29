#!/usr/bin/gnuplot
#
# Explaining the 3D paramteric plotting
#
# AUTHOR: Hagen Wierstorf
# VERSION: gnuplot 4.6 patchlevel 0

reset

set terminal pngcairo enhanced
set output 'SphericalCoordinatesVect.png'

# color definitions



set style line 1 lc rgb '#8b1a0e' pt 1 ps 2 lt 2 lw 2 # --- red
set style line 2 lc rgb '#5e9c36' pt 1 ps 2 lt 2 lw 2 # --- green
set style line 3 lc rgb '#008B8B' pt 1 ps 2 lt 2 lw 2 # --- blue
set style line 4 lc rgb '#a3a3a3' pt 1 ps 2 lt 2	 lw 2 # --- gray
set style line 5 lc rgb '#F9C96D' pt 1 ps 2 lt 2 lw 2 # --- brown

set view 20,20,1,1

# Arrows


# R1
r = 1.0
theta = pi/4
phi = pi/4

x = r*cos(theta)*cos(phi)
y = r*cos(theta)*sin(phi)
z = r*sin(theta)

## R1
set arrow from 0,0,0 to x,y,z front ls 1
set arrow from x,y,z to x+0.2,y-0.2,z front ls 2
## Projecao R1
set arrow from x,y,0 to x+(0.2/sqrt(2)),y-(0.2/sqrt(2)),0 front ls 4
set arrow from 0,0,0 to x,y,0 front nohead ls 4


# R2
r2 = 1.0
theta2 = pi/4
phi2 = pi/2

x2 = r2*cos(theta2)*cos(phi2)
y2 = r2*cos(theta2)*sin(phi2)
z2 = r2*sin(theta2)

## R2
set arrow from 0,0,0 to x2,y2,z2 front ls 1
set arrow from x2,y2,z2 to x2+0.2,y2,z2 front ls 2
## Projecao R2
set arrow from x2,y2,0 to x2+0.2,y2,0 front ls 4
set arrow from 0,0,0 to x2,y2,0 front nohead ls 4


# R3
r2 = 1.0
theta2 = pi/4
phi2 = 0

x2 = r2*cos(theta2)*cos(phi2)
y2 = r2*cos(theta2)*sin(phi2)
z2 = r2*sin(theta2)

## R2
set arrow from 0,0,0 to x2,y2,z2 front ls 1
set arrow from x2,y2,z2 to x2,y2-0.2,z2 front ls 2
## Projecao R2
set arrow from x2,y2,0 to x2,y2-0.2,0 front ls 4
set arrow from 0,0,0 to x2,y2,0 front nohead ls 4


# Labels
#set label '{/Symbol f}' at 0.3,0.13,0 textcolor ls 2
#set label '{/Symbol q}' at 0.09,0.1,0.5 textcolor ls 3
#set label 'r' at 0.6,0.6,1.1 textcolor ls 1
#set label 'r cos({/Symbol q})' at 0.5,0.4,0 rotate by 12 textcolor ls 4
#set label 'r cos({/Symbol q}) cos({/Symbol f})' at 0.48,1.1,0 rotate by -4 textcolor ls 4
#set label 'r cos({/Symbol q}) sin({/Symbol f})' at 1.05,0.1,0 rotate by 67 textcolor ls 4
#set label 'r sin({/Symbol q})' at 1.05,1,0.4 rotate by 90 textcolor ls 4

set parametric

set xrange [-0.18:0.8]
set yrange [-0.22:0.8]
set zrange [0:1]

set style line 11 lc rgb '#808080' lt 1
set border ls 11

set style line 12 lc rgb'#808080' lt 0 lw 1

set grid ls 12

set grid ztics

set xyplane at 0
set xtics axis nomirror; set ytics axis nomirror;

set dummy u,v

set urange [pi:pi/4]
set vrange [0:pi/4]

splot 0,0,0 w dots lc rgb '#000000'
