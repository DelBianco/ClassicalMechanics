set terminal pngcairo enhanced

set output "1o1.png"

w=1
fo=1

set xtics autofreq

set style line 12 lc rgb '#808080' lt 0 lw 1
set grid back ls 12

set style line 1 lc rgb '#8b1a0e' pt 6 ps 2 lt 2 lw 2 # --- red
set style line 2 lc rgb '#5e9c36' pt 6 ps 2 lt 2 lw 2 # --- green
set style line 3 lc rgb '#A9BDE6' pt 6 ps 2 lt 2 lw 2 # --- blue
set style line 4 lc rgb '#F9C96D' pt 6 ps 2 lt 2 lw 2 # --- brown
set style line 5 lc rgb '#c3c3c3' pt 6 ps 2 lt 2 lw 2 # --- gray
set style line 6 lc rgb '#E47833' pt 6 ps 2 lt 2 lw 2 # --- orange

set key left top
set xlabel 'variaveis de 0 a 1000'

plot 'f1.dat' w l ls 1 title 'f=1', 'f2.dat' w l ls 2 title 'f=2', 'f3.dat' w l ls 3 title  'f=3', 'h1.dat' w l ls 4 title  'h=1', 'h2.dat' w l ls 5 title  'h=2', 'h3.dat'w l ls 6  title  'h=3'

