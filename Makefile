R_OPTS=--vanilla --slave -e

index.html: r-intro.rmd _output.yaml r-intro_files/* styles.css
	R $(R_OPTS) "rmarkdown::render('r-intro.rmd')"
	mv r-intro.html index.html
