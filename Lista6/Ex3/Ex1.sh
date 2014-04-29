#!/bin/bash

python Ex1.py q > q.dat
python Ex1.py q1 > q1.dat
python Ex1.py q2 > q2.dat


python Ex1.py x1 > x1.dat
python Ex1.py x2 > x2.dat
python Ex1.py x3 > x3.dat
python Ex1.py x4 > x4.dat

gnuplot EX1o0.gp
pdflatex EX1.tex
