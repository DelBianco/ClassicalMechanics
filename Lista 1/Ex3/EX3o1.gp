set terminal pngcairo enhanced

set output "3o1.png"

set xtics autofreq


m=1
b=0.1
alpha=0.5

Vo = 10

set style line 12 lc rgb '#808080' lt 0 lw 1
set grid back ls 12

set style line 1 lc rgb '#8b1a0e' pt 1 ps 2 lt 2 lw 2 # --- red
set style line 2 lc rgb '#5e9c36' pt 1 ps 2 lt 2 lw 2 # --- green
set style line 3 lc rgb '#A9BDE6' pt 1 ps 2 lt 2 lw 2 # --- blue
set style line 4 lc rgb '#F9C96D' pt 1 ps 2 lt 2 lw 2 # --- brown
set style line 5 lc rgb '#c3c3c3' pt 1 ps 2 lt 2 lw 2 # --- gray


plot  "X.dat" title 'Numerica' w p ls 2 , (-log((b*alpha*x/m)+exp(-alpha*Vo))/alpha) w l ls 1 title 'Calculado'
