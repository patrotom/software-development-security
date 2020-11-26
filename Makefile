all: build view
clean:
	rm -rf *.aux *.log *.synctex.gz *.bbl *.bcf *.out *.blg *.run.xml _minted*
build:
	xelatex -synctex=1 -interaction=nonstopmode -shell-escape main.tex
view:
	xreader main.pdf &>/dev/null &
