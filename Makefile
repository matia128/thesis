MAIN = main

.PHONY: all clean

all:
	pdflatex $(MAIN)
	biber $(MAIN)
	pdflatex $(MAIN)
	pdflatex $(MAIN)

clean:
	rm -f *.aux *.bbl *.bcf *.blg *.fdb_latexmk *.fls \
	      *.lof *.log *.lot *.out *.run.xml *.synctex.gz *.toc
