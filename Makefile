.PHONY:data tests eda regression report clean all

all: eda regression report/report.pdf session-info.txt

data:
	curl -0 http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv >> data/Advertising.csv

#sources code/tests/test-that.R
tests: 
	Rscript code/test-that.R

#Exploratory Data Analysis
eda:
	Rscript -e code/scripts/eda-script.R data/Advertising.csv

#sources regression-script.R
regression:
	Rscript code/scripts/regerssion-script.R data/Advertising.csv

#generates report.pdf or report.html
report/report.pdf:
	Rscript -e 'library(rmarkdown); render("report/report.Rmd")'

#session-info
session-info.txt:
	Rscript code/scripts/session-info-script.R

clean:
	rm -f report/*.pdf
	rm -f report/*.html