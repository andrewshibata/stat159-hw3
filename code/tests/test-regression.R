library(testthat)

#residuatl_sum_squares() test
context('Testing residuatl_sum_squares()')
test_that('Residual Sum of Squares matches reference value', {
	#setup
	reg = lm(mpg~disp+hp,data=mtcars)
	regsum = summary(reg)

	#testing for expected reference value
	
	})
