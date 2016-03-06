.PHONY: FractalPres.pdf all clean

all: FractalPres.pdf

%.tex: %.raw
	./raw2tex $< > $@

%.tex: %.dat
	./dat2tex $< > $@

FractalPres.pdf: FractalPres.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make FractalPres.tex

clean:
	latexmk -CA
