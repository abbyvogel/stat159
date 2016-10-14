### ABBY VOGEL 
###    HW3


ad <- read.csv("../../data/Advertising.csv")


##########################
#SUMMARY STATISTICS 
##########################

sink("../../data/eda-output.txt")
print("Summary Statistics of Thousands of Dollars Spent on TV Advertising")
summary(ad$TV)
print("Summary Statistics of Sales (Thousands of Units)")
summary(ad$Sales)
print("Summary Statistics of Thousands of Dallars Spent on Radio Advertising")
summary(ad$Radio)
print("Summary Statistics of Thousands of Dallars Spent on Newspaper Advertising")
summary(ad$Newspaper)
print("Matrix of Correlation")
cor(data.frame(ad[2:5]))
sink()



###########################
## HISTOGRAMS 
###########################

#Sales
png(file="../../images/histogram-sales.png")
hist(ad$Sales, main= "Distribution of Sales", xlab = "Thousands of Units Sold")
dev.off()

#TV
png(file="../../images/histogram-TV.png")
hist(ad$TV, main ="Distribution of TV Advertising Expenditure", xlab="Expenditure in Thousands of Dollars")
dev.off()

#Radio
png(file="../../images/histogram-radio.png")
hist(ad$Radio, main ="Distribution of Radio Advertising Expenditure", xlab="Expenditure in Thousands of Dollars")
dev.off()

#Newspaper
png(file="../../images/histogram-newspaper.png")
hist(ad$Newspaper, main ="Distribution of Newspaper Advertising Expenditure", xlab="Expenditure in Thousands of Dollars")
dev.off()

#########################
## Scatterplots
#########################
#scatterplot TV
png(file="../../images/scatterplot-tv-sales.png")
regplot <- plot(ad$Sales~ad$TV, pch=19, col="blue", xlab = "TV Advertisement (Thousands of Dollars)", ylab= "Sales (Thousands of Units)", main="Sales v. TV Advertisement")
dev.off()

#scatterplot Radio
png(file="../../images/scatterplot-radio-sales.png")
regplot <- plot(ad$Sales~ad$Radio, pch=19, col="blue", xlab = "Radio Advertisement (Thousands of Dollars)", ylab= "Sales (Thousands of Units)", main="Sales v. Radio Advertisement")
dev.off()

#scatterplot Newspaper
png(file="../../images/scatterplot-newspaper-sales.png")
regplot <- plot(ad$Sales~ad$Newspaper, pch=19, col="blue", xlab = "Newspaper Advertisement (Thousands of Dollars)", ylab= "Sales (Thousands of Units)", main="Sales v. Newspaper Advertisement")
dev.off()


#########################
#Scatterplot Matrix
#########################
png(file="../../images/scatterplot-matrix.png")
par(mfrow=c(2,3))
plot(ad$Sales~ad$TV, pch=20, col="blue", xlab = "TV", ylab= "Sales", main="Sales v. TV")
plot(ad$Sales~ad$Radio, pch=20, col="blue", xlab = "Radio", ylab= "Sales", main="Sales v. Radio")
plot(ad$Sales~ad$Newspaper, pch=20, col="blue", xlab = "Newspaper", ylab= "Sales", main="Sales v. Newspaper")
plot(ad$Radio~ad$TV, pch=20, col="blue", xlab = "TV", ylab= "Radio", main="TV v. Radio")
plot(ad$Newspaper~ad$TV, pch=20, col="blue", xlab = "TV", ylab= "Newspaper", main="TV v. Newspaper")
plot(ad$Newspaper~ad$Radio, pch=20, col="blue", xlab = "Radio", ylab= "Newspaper", main="Radio v. Newspaper")
dev.off()

#########################
#MATRIX OF CORRELATION
#########################
cormat <- cor(data.frame(ad[2:5]))
save(cormat, file="../../data/correlation-matrix.RData")

