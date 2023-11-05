.PHONY: all
all: main.tex

%.tex: clean
	@echo "Compiling $@"
	pdflatex $@
	@echo "\nRe-compiling $@ to resolve references, TOC, etc"
	pdflatex $@

.PHONY: clean
clean:
	@echo "Removing auxilary files"
	rm -f *.aux *.log *.out *.fdb_latexmk *.fls *.bbl *.bcf *.xml *.xmpi *.blg
# *.synctex.gz
