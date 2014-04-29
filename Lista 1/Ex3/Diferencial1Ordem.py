from math import *
import sys

def Euler(dt,tf):
	m=1
	b=0.1
	a=0.5
	vi=0
	xi=0
	t=0
	while t < tf:
		t = t+dt
		ai = f0(1-exp(-a*t))
		v1 = vi + ai*dt
		x1 = xi + vi*dt
		print xi,v
		xi = x1
		vi = v1
		

Euler(0.003, 10)
