from math import *
import sys

def deriva1(f0,f2,h):
	derivnoponto1 = (f2-f0)/h
	return derivnoponto1
	
def deriva2(f0,f1,f2,h):
	derivnoponto1 = (f2-2*f1+f0)/pow(h,2)
	return derivnoponto1

def Euler(dt,tf):
	m=10
	a=10
	
	x0=0
	v0=0
	
	t=0
	f0 = 0.03
	
	a0 = f0/m
	a1 = (f0/m)*(1-exp(-a*dt))
	
	v1 = v0 + a0*dt
	v2 = v1 + a1*dt

	x1 = x0 + v0*dt
	x2 = x1 + v1*dt


	while t < tf:

		print t,x0

		v0 = v1
		a0 = (f0/m)*(1-exp(-a*t))
		x2=((f0/m)*(1-exp(-a*t))-deriva2(v0,v1,v2,dt)-a*deriva1(x0,x2,dt))/(4*pow(a,2))

		v1 = v0 + a0*dt
		t = t+dt
		a1 = (f0/m)*(1-exp(-a*t))
		x1=((f0/m)*(1-exp(-a*t))-deriva2(v0,v1,v2,dt)-a*deriva1(x0,x2,dt))/(4*pow(a,2))

		v2 = v1 + a1*dt
		x0=((f0/m)*(1-exp(-a*t))-deriva2(v0,v1,v2,dt)-a*deriva1(x0,x2,dt))/(4*pow(a,2))


Euler(0.003, 10)
