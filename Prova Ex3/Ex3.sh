#!/bin/bash

python Dif.py > graph.dat
gnuplot EX3o0.gp

python Dif1.py > graph1.dat
gnuplot EX3o1.gp

python Dif2.py > graph2.dat
gnuplot EX3o2.gp

python Dif3.py > graph3.dat
gnuplot EX3o3.gp

pdflatex EX3.tex
