.PHONY: data/Advertising.csv all tests clean

all: eda-output.txt regression.RData tests report.pdf session-info.txt


data/Advertising.csv:
	curl -o data/Advertising.csv "http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv"

tests: 
	RScript -e "library(testthat) ; test_file('code/test-that.R')"

regression.RData: code/scripts/regression-script.R data/Advertising.csv
	cd code/scripts; Rscript regression-script.R


eda-output.txt: code/scripts/eda-script.R data/Advertising.csv
	cd code/scripts; Rscript eda-script.R

report.pdf: report/report.Rmd
	cd report; Rscript -e 'library(rmarkdown); render("report.Rmd")'

session-info.txt: code/scripts/session-info-script.R
	cd code/scripts; Rscript session-info-script.R

clean:
	rm -f report.pdf

