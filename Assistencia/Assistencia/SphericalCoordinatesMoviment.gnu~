#!/usr/bin/gnuplot
#
# Plotting a sphere with Gnuplots parametric mode
#
# AUTHOR: Hagen Wierstorf
# VERSION: gnuplot 4.6 patchlevel 0

reset

set terminal pngcairo enhanced
set output 'SphericalCoordinatesMoviment.png'

# Style definitions
set border lw 0.3

set style line 1 lc rgb '#8b1a0e' pt 1 ps 2 lt 2 lw 2 # --- red
set style line 2 lc rgb '#5e9c36' pt 1 ps 2 lt 2 lw 2 # --- green
set style line 3 lc rgb '#A9BDE6' pt 1 ps 2 lt 2 lw 2 # --- blue
set style line 4 lc rgb '#F9C96D' pt 1 ps 2 lt 2 lw 2 # --- brown
set style line 5 lc rgb '#c3c3c3' pt 1 ps 2 lt 2 lw 2 # --- gray

# Radius
r = 10.0
theta = pi/4
phi = pi/4

x = r*cos(theta)*cos(phi)
y = r*cos(theta)*sin(phi)
z = r*sin(theta)

set arrow from 0,0,0 to x,y,z front ls 1
set arrow from x,y,z to x+3,y-3,z front ls 2
set arrow from x,y,0 to x+3,y-3,0 front ls 5

set view 60, 40
set parametric

set isosamples 2,30

unset key
set size square 1,1

set xrange [0:r/1.2]
set yrange [0:r/1.2]
set zrange [0:r/1.2]
set urange [0:pi/2]
set vrange [pi/4:pi/2]

# Parametric functions for the sphere
r0 = r
fx(v,u) = r0*cos(v)*cos(u)
fy(v,u) = r0*cos(v)*sin(u)
fz(v)   = r0*cos(v)

# 
fxproj(v,u) = r0*cos(v)*cos(u)
fyproj(v,u) = r0*cos(v)*sin(u)
fzproj(v)   = 0

set tics textcolor rgb '#ffffff'

set xyplane 0
splot fx(v,u),fy(v,u),fz(v) ls 4 ,fxproj(v,u),fyproj(v,u),fzproj(v) ls 5
