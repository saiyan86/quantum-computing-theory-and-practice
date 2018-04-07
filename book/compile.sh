#!/bin/bash

# ================================ script description =======================================
: <<'END'
	This script automates
		compiling .tex source
		deleting auxiliary files
END
# =====================================================================================

xelatex quantum_computing.tex
bibtex quantum_computing.aux
xelatex quantum_computing.tex

rm *.bbl
rm *.blg
rm *.aux
rm *.log
rm *.lof
rm *.lot
rm *.toc
rm *.def
rm *.out
rm *.idx