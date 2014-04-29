set terminal pngcairo enhanced

set style line 12 lc rgb '#808080' lt 0 lw 1
set grid back ls 12

set style line 1 lc rgb '#8b1a0e' pt 6 ps 2 lt 2 lw 2 # --- red
set style line 2 lc rgb '#5e9c36' pt 6 ps 2 lt 2 lw 2 # --- green
set style line 3 lc rgb '#A9BDE6' pt 6 ps 2 lt 2 lw 2 # --- blue
set style line 4 lc rgb '#F9C96D' pt 6 ps 2 lt 2 lw 2 # --- brown
set style line 5 lc rgb '#c3c3c3' pt 6 ps 2 lt 2 lw 2 # --- gray
set style line 6 lc rgb '#E47833' pt 6 ps 2 lt 2 lw 2 # --- orange
set samples 1000

set output "Graph.png"

plot 'q.dat' w l ls 1,'q1.dat' w l ls 2,'q2.dat' w l ls 3

set output "Graph1.png"

plot 'x1.dat' w l ls 1,'x2.dat' w l ls 2,'x3.dat' w l ls 3,'x4.dat' w l ls 4