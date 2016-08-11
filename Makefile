README: README.pdf

README.md: README.Rmd
	Rscript -e 'knitr::knit("README.Rmd")'
README.pdf: README.md
	/usr/local/bin/pandoc README.md -o README.pdf --highlight-style=tango -V geometry:margin=2cm -V fontsize=12pt


