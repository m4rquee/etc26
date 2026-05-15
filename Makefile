TEX = main.tex
PDF = main.pdf

.PHONY: all watch clean distclean

all: $(PDF)

$(PDF): $(TEX)
	latexmk -pdf $(TEX)

watch:
	latexmk -pdf -pvc $(TEX)

clean:
	latexmk -c $(TEX)

distclean:
	latexmk -C $(TEX)

