#calculates the RSS
#input = lm object
#output = RSS value
residual_sum_squares = function(lm_object) {
	rss = sum(lm_object$residuals ** 2)
	return(rss)
}

#calculates the TSS
#input = lm object
#output = TSS value
total_sum_squares = function(lm_object) {
	tss = sum((lm_object$model[[1]] - mean(lm_object$model[[1]]))**2)
	return(tss)
}

#calculates the F-statistic
#input = lm object
#output = F-statistic value
f_statistic = function(lm_object) {
	rss = residual_sum_squares(lm_object)
	tss = total_sum_squares(lm_object)
	p = length(lm_object$coefficients) - 1
	n = length(lm_object$residuals)
	f_stat = ((tss-rss)/p) / (rss/(n-p-1))
	return(f_stat)
}

#calculates the RSE
#input = lm object
#output = RSE value
residual_std_error = function(lm_object) {
	n = length(lm_object$residuals)
	rss = residual_sum_squares(lm_object)
	rse = sqrt(rss/(n-2))
	return(rse)
}

#calculates r^2
#input = lm object
#output = r^2 value
r_squared = function(lm_object) {
  rss = residual_sum_squares(lm_object)
  tss = total_sum_squares(lm_object)
  r2 = 1-(rss/tss)
  return(r2)
}