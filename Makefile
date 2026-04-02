PDF=docs/FYP_Report_Rastvorov.pdf
TEX=docs/FYP_Report_Rastvorov.tex

.PHONY: all pdf clean

all: pdf

pdf:
	latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir=docs $(TEX)

clean:
	latexmk -C -outdir=docs $(TEX)
