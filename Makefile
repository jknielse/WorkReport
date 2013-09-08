all: Default_Report.pdf

Default_Report.pdf: Default_Report.tex
	pdflatex Default_Report.tex
