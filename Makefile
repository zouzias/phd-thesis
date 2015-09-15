TEX = pdflatex -shell-escape -interaction=nonstopmode -file-line-error
BIB = bibtex

.PHONY: all view

all : ut-thesis.pdf

view :
	open ut-thesis.pdf

ut-thesis.pdf : ut-thesis.tex ut-thesis.bbl ut-thesis.blg
	$(TEX) ut-thesis.tex

ut-thesis.bbl ut-thesis.blg : ut-thesis.bib ut-thesis.aux
	$(BIB) ut-thesis

ut-thesis.aux : ut-thesis.tex
	$(TEX) ut-thesis.tex

ut-thesis.bib : ut-thesis.tex
	$(TEX) ut-thesis.tex
