from math import *
import sys

# h variavel
MaxRange=1000

if sys.argv[1] == '-h':
	f = float(sys.argv[2])
	for i in range(0,MaxRange*100):
		h = i*0.001
		print f-h , 2*sqrt(f*h)
else:
	h = float(sys.argv[2])
	for i in range(0,MaxRange*100):
		f = i*0.001
		print 2*sqrt(f*h), f-h
