args = commandArgs(trailingOnly =TRUE)
advertising = read.csv(args[1], header = TRUE)

#TV Info
tv_fit = lm(Sales~TV, data = advertising)
tv_summary = summary(tv_fit)
png('images/scatterplot-tv-sales.png')
plot(x=advertising$TV,y=advertising$Sales,main = 'Regression: Sales ~ TV',xlab='TV',ylab='Sales')
abline(a=tv_summary$coefficients[1],b=tv_summary$coefficients[2],col='red')
dev.off()

#Radio Info
radio_fit = lm(Sales~Radio, data = advertising)
radio_summary = summary(radio_fit)
png('images/scatterplot-radio-sales.png')
plot(x=advertising$Radio,y=advertising$Sales,main = 'Regression: Sales ~ Radio',xlab='Radio',ylab='Sales')
abline(a=radio_summary$coefficients[1],b=radio_summary$coefficients[2],col='red')
dev.off()

# Newspapern Info
newspaper_fit = lm(Sales~Newspaper, data = advertising)
newspaper_summary = summary(newspaper_fit)
png('images/scatterplot-newspaper-sales.png')
plot(x=advertising$Newspaper,y=advertising$Sales,main = 'Regression: Sales ~ Newspaper',xlab='Newspaper',ylab='Sales')
abline(a=newspaper_summary$coefficients[1],b=newspaper_summary$coefficients[2],col='red')
dev.off()


#Multiple Regression
all_fit = lm(Sales~TV+Radio+Newspaper,data=advertising)
all_summary = summary(all_fit)

#Output
save(tv_fit,radio_fit,newspaper_fit,all_fit,file='data/regression.RData')

png('images/residual-plot.png')
plot(all_fit,which=1)
dev.off()

png('images/normal-qq-plot.png')
plot(all_fit,which=2)
dev.off()

png('images/scale-location-plot.png')
plot(all_fit,which=3)
dev.off()