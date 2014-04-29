set terminal pngcairo enhanced

set output "7o2.png"

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
x0 = 1
plot [0:100] (x0 + gamma * x0 * x)*exp(-gamma*x) w l notitle ls 1


