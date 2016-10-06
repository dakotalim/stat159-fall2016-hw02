.PHONY: all data clean

all: report/report.pdf data/eda-output.txt data/regression.RData

data:
	curl http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv > data/Advertising.csv

data/eda-output.txt: code/eda-script.R data/Advertising.csv
	Rscript code/eda-script.R

data/regression.RData: code/regression-script.R data/Advertising.csv
	Rscript code/regression-script.R

report/report.pdf: report/report.Rmd data/regression.RData images/scatterplot-tv-sales.png
	Rscript -e 'rmarkdown::render("report/report.Rmd")'

clean:
	rm report/report.pdf
