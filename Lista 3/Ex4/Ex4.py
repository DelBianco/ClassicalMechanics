from math import *
import sys
import random
pi = 3.141592
#tempo para 1 periodo
tmax = 2*pi
#Resolucao
resol = 0.001
#Condicoes iniciais
theta_y = 2*pi*random.random()
theta_x = 0
print str(theta_y)
#Constantes
Ax = 1
Ay = 1
Wx = 2
Wy = 1
for i in range(0,int(tmax/resol)):
	t = i*resol
	x = Ax*cos(Wx*t + theta_x)
	y = Ay*cos(Wy*t + theta_y)
	print x,y,t
