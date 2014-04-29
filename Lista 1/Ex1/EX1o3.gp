set terminal pngcairo enhanced

set output "1o3.png"

fo=1
m=1
a=1

w=0.3
wa=0.5
wb=0.8
wc=1
Xo = 0

set xtics autofreq

S(x,a)=((x**2)/(4) + (cos(2*a*x)-1)/(8*a**2 ) ) + Xo
S1(x,a)=(x**2)/(4) + Xo

set style line 12 lc rgb '#808080' lt 0 lw 1
set grid back ls 12

set style line 1 lc rgb '#8b1a0e' pt 6 ps 2 lt 2 lw 2 # --- red
set style line 2 lc rgb '#5e9c36' pt 6 ps 2 lt 2 lw 2 # --- green
set style line 3 lc rgb '#A9BDE6' pt 6 ps 2 lt 2 lw 2 # --- blue
set style line 4 lc rgb '#F9C96D' pt 6 ps 2 lt 2 lw 2 # --- brown
set style line 5 lc rgb '#000000' pt 6 ps 2 lt 2 lw 2 # --- black

plot [0:pi] S(x,w) title("{/Symbol w} = 0.3") ls 2 , S(x,wa) title("{/Symbol w} = 0.5") ls 1 , S(x,wb) title("{/Symbol w} = 0.8") ls 3 , S(x,wc) title("{/Symbol w} = 1") ls 4 \
,S1(x,w) title("{/Symbol w} -> inf") ls 5;

set output "1o4.png"

plot [0:4*pi] S(x,w) title("{/Symbol w} = 0.3") ls 2 , S(x,wa) title("{/Symbol w} = 0.5") ls 1 , S(x,wb) title("{/Symbol w} = 0.8") ls 3 , S(x,wc) title("{/Symbol w} = 1") ls 4 \
,S1(x,w) title("{/Symbol w} -> inf") ls 5;
