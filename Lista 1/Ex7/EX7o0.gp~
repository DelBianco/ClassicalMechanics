set terminal pngcairo enhanced

set output "7o0.png"

set autoscale

set style line 12 lc rgb '#808080' lt 0 lw 1
set grid back ls 12

set style line 1 lc rgb '#8b1a0e' pt 6 ps 2 lt 2 lw 2 # --- red
set style line 2 lc rgb '#5e9c36' pt 1 ps 1 lt 2 lw 1 # --- green
set style line 3 lc rgb '#A9BDE6' pt 6 ps 2 lt 2 lw 2 # --- blue
set style line 4 lc rgb '#F9C96D' pt 6 ps 2 lt 2 lw 2 # --- brown
set style line 5 lc rgb '#c3c3c3' pt 6 ps 2 lt 2 lw 2 # --- gray

set samples 2000
gamma = 0.5
Omega = 2
theta0 = 1.23

plot [0:100] exp(-gamma*x/2) * cos(Omega*x + theta0) w l notitle ls 1,  exp(-gamma*x/2) ls 2 notitle, exp(-gamma*x/2) ls 2 notitle


