.PHONY:data tests eda regression report clean all

all: eda regression report

data:
	curl -0 http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv >> data/Advertising.csv

#sources code/tests/test-that.R
#tests: 

#sources eda-script.R
#eda:

#sources regression-script.R
#regression:

#generates report.pdf or report.html
#report:

clean:
	rm -f report/*.pdf
	rm -f report/*.html