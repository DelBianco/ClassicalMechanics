#!/bin/bash

python Ex2.py > plot.dat

python Ex2-0.py > plot0.dat

gnuplot EX2o0.gp
gnuplot EX2o1.gp

pdflatex EX2.tex
