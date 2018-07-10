all:
	clear
	make clean
	pdflatex ApresentacaoTCC.tex
	pdflatex ApresentacaoTCC.tex
	if ! pgrep evince; then (nohup evince ApresentacaoTCC.pdf &> /dev/null &); fi
clean:
	rm -f *~ *.dvi *.ps *.backup *.aux *.log
	rm -f *.lof *.lot *.bbl *.blg *.brf *.toc *.idx *.fls *.nav *.out *.snm *.fdb_latexmk
	rm -f *.pdf
	

