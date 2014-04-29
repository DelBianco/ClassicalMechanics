from math import *
import sys

def IntegrateS(inicio, fim, res):
	Sum = 0
	a = inicio	
	while a < fim :
		step =fSimpson(a,a+res)
		Sum = Sum + step
		a = a+res
		print a, Sum

def IntegrateT(inicio, fim, res):
	a = inicio	
	Sum = 0
	if inicio > fim:
		while a > fim:
			step = fTrap(a,a+res)
			Sum = Sum + step
			a = a-res
			print inicio-a, Sum
	else:
		print 0,0
		while a < fim:
			step = fTrap(a,a+res)
			Sum = Sum + step
			a = a+res
	
			print a, Sum

def F(x):
	alfa = 1
	b = 1
	m = 1
	Vo = 1
	deltaX=0
	k = (-b*alfa/m)*x + exp(-alfa*Vo)
	if k <=0 :
		deltaX=0
	else:
		deltaX=-log( k) / alfa
	return deltaX

def fSimpson(a,b):
	c=(a+b)/2
	result = (b-a)*(F(a) + 4*F(c) +F(b) )/6
	return result

def fTrap(a,b):
	c=(a+b)/2
	result = (b-a)*(F(c))
	return result

IntegrateS(0,1, 0.00001)
