set terminal pngcairo enhanced

set output "8o1.png"


set style line 12 lc rgb '#808080' lt 0 lw 1
set grid back ls 12

set style line 1 lc rgb '#8b1a0e' pt 6 ps 2 lt 2 lw 2 # --- red
set style line 2 lc rgb '#5e9c36' pt 6 ps 2 lt 2 lw 2 # --- green
set style line 3 lc rgb '#A9BDE6' pt 6 ps 2 lt 2 lw 2 # --- blue
set style line 4 lc rgb '#F9C96D' pt 6 ps 2 lt 2 lw 2 # --- brown
set style line 5 lc rgb '#c3c3c3' pt 6 ps 2 lt 2 lw 2 # --- gray
set style line 6 lc rgb '#E47833' pt 6 ps 4 lt 1 lw 2 # --- orange


#set key left top
set pm3d
set pm3d map
set logscale cb 10
#set palette maxcolors 255
set palette defined (0 "#000000", 1 "#5e9c36")
set autoscale fix

set xtics ('Sun' 3, 'Jupiter' 18, 'Saturn' 36, 'Uranus' 55, 'Neptune' 72)
set ytics ('Sun' 3, 'Earth'8, 'Mars'11, 'Jupiter' 18, 'Saturn' 36, 'Uranus' 55, 'Neptune' 68, 'Pluto' 75)

plot 'ErroAstronomical.dat' matrix with image notitle
