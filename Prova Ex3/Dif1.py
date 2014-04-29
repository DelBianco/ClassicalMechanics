import numpy as np

def Dv(w2, xo, x, v):
	return -w2 * (x - xo)
   
def Dx(x,v):
	return v

ro = 0
ri = 1
vi = 0
ti = 0.0
tf = 4.6*np.pi
dt = 1.0e-3
w = 0.1
w2 = -w*w
N  = int ( (tf - ti) / dt )
 
#Runge-Kutta de IV ordem
r = np.zeros( N+1, dtype=float)
v = np.zeros_like(r)
t = np.zeros_like(r)

r[0] = ri
v[0] = vi
t[0] = ti

for i in range(N):
	kv1 = dt * Dv(w2, ro, r[i], v[i])
	kx1 = dt * Dx(r[i], v[i])

	kv2 = dt * Dv(w2, ro, r[i]+0.5*kx1, v[i]+0.5*kv1)
	kx2 = dt * Dx(r[i]+0.5*kx1, v[i]+0.5*kv1)

	kv3 = dt * Dv(w2, ro, r[i]+0.5*kx2, v[i]+0.5*kv2)
	kx3 = dt * Dx(r[i]+0.5*kx2, v[i]+0.5*kv2)

	kv4 = dt * Dv(w2, ro, r[i]+kx3, v[i]+kv3)
	kx4 = dt * Dx(r[i]+kx3, v[i]+kv3)

	t[i+1] = t[i] + dt
	r[i+1] = r[i] + 1.0 / 6.0 * (kx1 + 2.0 * kx2 + 2.0 * kx3 + kx4)
	v[i+1] = v[i] + 1.0 / 6.0 * (kv1 + 2.0 * kv2 + 2.0 * kv3 + kv4)
	
	#print t[i], 1/r[i]

##transformando de polares para coordenadas cartesianas

x = np.zeros( N+1, dtype=float)
y = np.zeros_like(x)
for i in range(N):
	x[i] = (1/r[i])*np.cos(t[i])
	y[i] = (1/r[i])*np.sin(t[i])
	print x[i],y[i]


