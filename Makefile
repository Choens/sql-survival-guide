open: 
	pdflatex    xx-joins.tex
	pdflatex    xx-joins.tex
	xdg-open xx-joins.pdf

pdf:
	pdflatex    xx-joins.tex
	pdflatex    xx-joins.tex

clean:
	rm *.aux
	rm *.log
	rm *.nav
	rm *.out
	rm *.snm
	rm *.toc
