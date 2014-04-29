#!/bin/bash
rm Explorer.dat
python Ex5.py > Explorer.dat
gnuplot EX5o0.gp

pdflatex EX5.tex
