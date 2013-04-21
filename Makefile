all: run
paper.pdf: paper.tex paper.bib
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
run: paper.pdf
	@open paper.pdf
