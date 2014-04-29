from math import *

pi = 3.14158
Max = 2*pi
Resol = 0.01
##todas as medidas em km

Pe = 2.06 #Perigeu
Ap = 2.485 #Apogeu

#Foco na origem e coordenadas polares

a = float(Pe+Ap)/2 # metade do semi-eixo maior

c = a - float(Pe)
e = float(c)/float(a)
for i in range(0,int(Max/Resol)):
	t = float(i)*Resol
	r = a*(1-pow(e,2))/(1+ e*cos(t))
	print t,r

