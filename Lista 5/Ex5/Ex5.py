from math import *
import sys

k1 = 1
k2 = 2
k3 = 3

m1 =1
m2 =2

A =1

res 0.05


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

	r.append(sqrt( pow(x[i+Max],2) +  pow(y[i+Max],2)))
	if x[i+Max]==0:
		theta.append(atan(y[i+Max]/0.0001))
	else:
		theta.append(atan(y[i+Max]/x[i+Max]))
	#print r[i+Max], theta[i+Max]
	print x[i+Max], y[i+Max]
	



