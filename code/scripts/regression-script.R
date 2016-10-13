args = commandArgs(trailingOnly =TRUE)
advertising = read.csv(args[1], header = TRUE)
fit = lm(advertising$Sales~advertising$TV, data = advertising)
lm_summary = summary(fit)

# Intercept and slope coefficients
intercept = lm_summary$coefficients[1]
slope = lm_summary$coefficients[2]

# Output the object
save(fit, file = 'data/regression.rData')

# Output the graph
png('images/scatterplot-tv-sales.png')
plot(x = advertising$TV, y = advertising$Sales, main = 'Regression', xlab = 'TV', ylab = 'Sales')
abline(a = intercept, b = slope, col = 'red')
dev.off()