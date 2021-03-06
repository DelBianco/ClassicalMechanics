set terminal pngcairo enhanced

set output "5o0.png"

set autoscale


m=1
b=0.1
alpha=0.5
Vo = 10

set style line 12 lc rgb '#808080' lt 0 lw 1
set grid back ls 12

set style line 1 lc rgb '#8b1a0e' pt 6 ps 2 lt 2 lw 2 # --- red
set style line 2 lc rgb '#5e9c36' pt 6 ps 2 lt 2 lw 2 # --- green
set style line 3 lc rgb '#A9BDE6' pt 6 ps 2 lt 2 lw 2 # --- blue
set style line 4 lc rgb '#F9C96D' pt 6 ps 2 lt 2 lw 2 # --- brown
set style line 5 lc rgb '#c3c3c3' pt 6 ps 2 lt 2 lw 2 # --- gray

set arrow from 0,-0.3 to 0,0.3 nohead ls 5


plot [-0.4:1.2]x**2 -x**3 w l notitle ls 2, 0 ls 5  notitle


