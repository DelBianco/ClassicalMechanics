#!/bin/bash

gnuplot SphericalCoordinatesMoviment.gnu
gnuplot SphericalCoordinates.gnu

pdflatex Relatorio.tex
