set terminal pngcairo enhanced

set output "5o2.png"

set style line 12 lc rgb '#808080' lt 0 lw 1
set grid back ls 12

set style line 1 lc rgb '#8b1a0e' pt 6 ps 2 lt 2 lw 2 # --- red
set style line 2 lc rgb '#5e9c36' pt 6 ps 2 lt 2 lw 2 # --- green
set style line 3 lc rgb '#09BDE6' pt 6 ps 2 lt 2 lw 2 # --- blue
set style line 4 lc rgb '#F9C96D' pt 6 ps 2 lt 2 lw 2 # --- brown
set style line 5 lc rgb '#c3c3c3' pt 6 ps 2 lt 2 lw 2 # --- gray
set style line 6 lc rgb '#E47833' pt 6 ps 2 lt 2 lw 2 # --- orange

A = 2
k =1

OmegaMais  = 1
OmegaMenos = 1.1

dotx1(t)=-A*(OmegaMenos*sin(OmegaMenos*t)*cos(OmegaMais*t)+OmegaMais*sin(OmegaMais*t)*cos(OmegaMenos*t))

dotx2(t)=-A*(OmegaMenos*sin(OmegaMais*t)*cos(OmegaMenos*t)+OmegaMais*sin(OmegaMenos*t)*cos(OmegaMais*t))

set samples 1000

m = 0.5

T1(x) = m*dotx1(x)**2
T2(x) = m*dotx2(x)**2

A = 2
k =1

Omega_1 = 1
Omega_2 = 1.1

V1(t) = (k*(A**2)*(cos((Omega_1 - Omega_2)/2 * t )**2)*(cos((Omega_1 + Omega_2)/2 * t )**2))/2

V2(t) = (k*(A**2)*(sin((Omega_1 - Omega_2)/2 * t )**2)*(sin((Omega_1 + Omega_2)/2 * t )**2))/2

plot T1(x)+V1(x) w l ls 3,T2(x)+V2(x) w l ls 6
