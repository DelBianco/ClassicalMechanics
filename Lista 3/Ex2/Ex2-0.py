from math import *
import sys

Max = 100

f0=1

def func(y):	
	x=f0 - pow(y,2)/(4*f0)
	return x
x=[]
y=[]
r=[]
theta=[]

for i in range(-Max,Max):

	h=i*0.1
	x.append(func(h))
	y.append(h)
	
	# r = sqrt(x^2 + y^2)
	r.append(sqrt( pow(x[i+Max],2) +  pow(y[i+Max],2)))
	
	#theta = arctg(y/x)
	if x[i+Max]==0: #para previnir a divisao por zero
		theta.append(atan2(y[i+Max],0.0001))
	else:
		theta.append(atan2(y[i+Max],x[i+Max]))
	print theta[i+Max],r[i+Max]
	
