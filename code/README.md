#Code
This file contains all code for the Simple Linear Regression paper
There are two files in this directory: eda-script.R and regression-script.R.

##eda-script
This script reads the Advertising.csv data set and builds histograms of the **Tv** and **Sales** data. These histograms are stored in the /images directory as histogram-sales.png, histogram-sales.pdf, histogram-tv.png, and histogram-tv.pdf.
The script also produces eda-output.txt, a txt file containing summary statistics for the **Tv** and **Sales** data which is stored in the /data directory.

##regression-script
This script reads the Advertising.csv data set and builds a linear regression model using `lm()` and a summary object created by calling `summary()` on our linear model. Both these objects are stored in the regression.RData file in the /data directory.
The script also produces a scatterplot of **Tv** vs **Sales** with the regression line superimposed upon it, this graph is stored in the /images direcorty as scatterplot-tv-sales.png and scatterplot-tv-sales.pdf.
