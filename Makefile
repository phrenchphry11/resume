FILENAME=HollyFrench

.PHONY: all clean deploy

.DELETE_ON_ERROR:

all: $(FILENAME).pdf

$(FILENAME).pdf: resume.tex resume.cls
	pdflatex -jobname=$(FILENAME) -interaction=nonstopmode resume.tex
	rm -f $(FILENAME).aux $(FILENAME).log

clean:
	rm -f $(FILENAME).aux $(FILENAME).log $(FILENAME).pdf

deploy: $(FILENAME).pdf
	cp -f $(FILENAME).pdf ~/Desktop/resume/HollyFrench.pdf
