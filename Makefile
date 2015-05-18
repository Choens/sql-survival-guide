01-introduction: 01-introduction.tex
	pdflatex 01-introduction.tex
	pdflatex 01-introduction.tex

01-introduction-open: 01-introduction.pd
	xdg-open 01-introduction.pdf

04-joins: 04-joins.tex
	pdflatex 04-joins.tex
	pdflatex 04-joins.tex

04-joins-open: 04-joins.pdf
	xdg-open 04-joins.pdf

clean:
	rm *.aux
	rm *.log
	rm *.nav
	rm *.out
	rm *.snm
	rm *.toc
