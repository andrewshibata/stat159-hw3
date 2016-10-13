args = commandArgs(trailingOnly =TRUE)
advertising = read.csv(args[1], header = TRUE)

# Compute the summary statistics
# Summary statistics for TV
tv_summary = c(summary(advertising$TV))
tv_summary = c(tv_summary, var(tv_summary), sd(tv_summary))
names(tv_summary)[7] = 'Variance'
names(tv_summary)[8] = 'Standard Deviation'

# Summary statistics for Radio
radio_summary = c(summary(advertising$Radio))
radio_summary = c(radio_summary, var(radio_summary), sd(radio_summary))
names(radio_summary)[7] = 'Variance'
names(radio_summary)[8] = 'Standard Deviation'

# Summary statistics for Newspaper
newspaper_summary = c(summary(advertising$Newspaper))
newspaper_summary = c(newspaper_summary, var(newspaper_summary), sd(newspaper_summary))
names(newspaper_summary)[7] = 'Variance'
names(newspaper_summary)[8] = 'Standard Deviation'

#Summary statistics for Sales
sales_summary = summary(advertising$Sales)
sales_summary = c(sales_summary, var(advertising$Sales), sd(advertising$Sales))
names(sales_summary)[7] = 'Variance'
names(sales_summary)[8] = 'Standard Deviation'

# Data Output
all_summary = matrix(ncol = 8, nrow = 4)
all_summary[1,] = tv_summary
all_summary[2,] = radio_summary
all_summary[3,] = newspaper_summary
all_summary[4,] = sales_summary
all_summary = data.frame(all_summary)
rownames(all_summary) = c('TV', 'Radio', 'Newspaper', 'Sales')
colnames(all_summary) = names(tv_summary)
sink('data/eda-output.txt')
all_summary
sink()
save(all_summary, file = 'data/eda-output.txt')


# Graph Output
png('images/histogram-tv.png')
hist(advertising$TV, main = 'TV Advertising Budget', xlab = 'Market')
dev.off()

png('images/histogram-radio.png')
hist(advertising$Radio, main = 'Radio Advertising Budget', xlab = 'Market')
dev.off()

png('images/histogram-newspaper.png')
hist(advertising$Newspaper, main = 'Newspaper Advertising Budget', xlab = 'Market')
dev.off()

png('images/histogram-sales.png')
hist(advertising$Sales, main = 'Histogram of Sales', xlab = 'Market')
dev.off()