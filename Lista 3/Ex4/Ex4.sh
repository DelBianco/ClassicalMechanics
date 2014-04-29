#!/bin/bash

for i in $(seq 0 100); do 
	
	python Ex4alt.py 100 $i > Lissajous1.dat

	gnuplot EX4o0.gp
	mv 4o0.png png/4o$i.png
done


pdflatex EX4.tex
