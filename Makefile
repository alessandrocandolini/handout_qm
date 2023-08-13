help:     ## Show this help.
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)

all: handout_qm.pdf ## build all targets

handout_qm.pdf: handout_qm.tex Chapters/*.tex FrontBackmatter/*.tex myBibliography9.bib ## Build handout_qm.tex
	@latexmk -pdflatex handout_qm.tex

clean: ## remove target
	@rm -f category-book.pdf





