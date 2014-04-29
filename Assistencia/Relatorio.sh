#!/bin/bash

gnuplot SphericalCoordinatesMoviment.gnu
gnuplot SphericalCoordinates.gnu
gnuplot SphericalCoordinatesVect.gp

pdflatex Relatorio.tex
