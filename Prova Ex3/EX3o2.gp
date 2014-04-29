set terminal pngcairo enhanced

set output "3o2.png"
set multiplot
set style line 12 lc rgb '#808080' lt 0 lw 1
set grid back ls 12
set style line 1 lc rgb '#8b1a0e' pt 1 ps 2 lt 2 lw 2 # --- red
set style line 2 lc rgb '#5e9c36' pt 1 ps 2 lt 2 lw 2 # --- green
set style line 3 lc rgb '#A9BDE6' pt 1 ps 2 lt 2 lw 2 # --- blue
set style line 4 lc rgb '#F9C96D' pt 1 ps 2 lt 2 lw 2 # --- brown
set style line 5 lc rgb '#c3c3c3' pt 1 ps 2 lt 2 lw 2 # --- gray

w = 0.1
A = 1

r(t) = -1/(A*cos(w*t))

set sample 1000

set xlabel 'X (Metros)'
set ylabel 'Y (Metros)'

plot 'graph2.dat' w p ls 2 title 'Numérico', NaN ls 1 title 'Calculado'
set polar
set origin 0,0
plot [0:4.6*pi] r(t) ls 1 notitle
