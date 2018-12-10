all:
	clear
	make clean
	pdflatex ApresentacaoTCC.tex
	pdflatex ApresentacaoTCC.tex
clean:
	rm -f *~ *.dvi *.ps *.backup *.aux *.log
	rm -f *.lof *.lot *.bbl *.blg *.brf *.toc *.idx *.fls *.nav *.out *.snm *.fdb_latexmk
	rm -f *.pdf

crun:
	make all && make -j

run:
	xdg-open ApresentacaoTCC.pdf &
