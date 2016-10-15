#In code/:

**test-that.R** - Runs test-regression.R which runs test

#Subdirectories in code/:

_functions_ 
	**regression-functions.R** - functions to calculate regression values

_scripts_
	**eda-script.R** - Exploratory Data Analysis. Produces eda-output.txt, correlation-matrix.RData, and histograms
	**regression-script.R** - Creates regression objects such as regression.RData, scatterplots, residual-plot.png, scale-location-plot.png, and normal-qq-plot.png
	**session-info-script.R** - Makes all relevant library calls

_tests_
	**test-regression.R** - checks regression code