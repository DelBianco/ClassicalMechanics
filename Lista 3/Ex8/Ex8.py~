from math import *

f = open('PlanetaryData.dat', 'r')
Erro = open('Erro.dat', 'w')
PName = open('PlanetsNames.dat', 'w')
i=0
Planets = []
for line in f:
	Planets.append(line.rstrip('\n').split(','))


NOME = 0
DIST = 1
PERI = 2
INCL = 3
EXCE = 4
for P1 in Planets:

	erro1 = []
	PName.write(str(P1[NOME])+'\n')
	for P2 in Planets:
		# T_1^2 / a_1 ^3 = T_2^2 /a_2 ^3

		#print '------------ '+P1[NOME]+' vs ' + P2[NOME] +' ------------'

		D1 = float(P1[DIST])
		D2 = float(P2[DIST])

		T1 = float(P1[PERI])
		T2 = float(P2[PERI])

		erro1.append(str( sqrt(pow( pow(T1,2)/pow(D1,3) - pow(T2,2)/pow(D2,3),2)))+'\t')
	erro1.append('\n')
	Erro.writelines(erro1)
Erro.close()
f.close()
PName.close()
