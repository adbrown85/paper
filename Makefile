VIEWER := open
-include Makefile.local

all: paper.pdf
paper.pdf: paper.tex paper.bib suthesis-2e.sty
	@pdflatex $< > /dev/null
	@bibtex paper > /dev/null
	@pdflatex $< > /dev/null
	@pdflatex $< > /dev/null
clean:
	@$(RM) paper.pdf
	@$(RM) paper.aux
	@$(RM) paper.bbl
	@$(RM) paper.blg
	@$(RM) *.log
view: paper.pdf
	@$(VIEWER) $< > /dev/null 2>&1
