#!/bin/bash

python Diferencial1Ordem.py > X.dat

gnuplot EX3o0.gp
gnuplot EX3o1.gp
gnuplot EX3o2.gp

pdflatex EX3.tex