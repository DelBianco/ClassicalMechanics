from math import *
import sys

r =0

# u = ln(r/a)-theta cotg(qsi)
# w = ln(r/a)+theta tg(qsi)
# Cte --  u , w , Q , a

Q = atan(3/4)
a = 1
w = 1
u = 0
theta = 0

for i in range(0,int(1000)):
	theta += 2*pi*i/1000
	r = exp(theta*3/4 + w)*a
	print r, theta
