### ABBY VOGEL 
###    HW3


#read in data
ad <- read.csv("../../data/Advertising.csv")

#######################
# SINGLE REGRESSION
#######################


#sales by tv
regtv <-lm(Sales~TV, data=ad)
tvsum <- summary(regtv)

#sales by radio
regradio <- lm(Sales~Radio, data=ad)
radiosum <- summary(regradio)

#sales by newspaper
regnews <- lm(Sales~Newspaper, data=ad)
newssum <- summary(regnews)


#######################
# MULTIPLE REGRESSION
#######################
reg <- lm(Sales~TV+Radio+Newspaper, data=ad)
sumreg<- summary(reg)

save(reg, sumreg, regtv, tvsum, regradio, radiosum, regnews, newssum, file="../../data/regression.RData")


#######################
# IMAGES
#######################

##Residuals v. Fitted
png(file="../../images/residuals-plot.png")
plot(reg, which=1, pch=20, col= "blue")
dev.off()

## QQ Plot
png(file="../../images/normal-qq-plot.png")
plot(reg, which=2, pch=20, col="blue")
dev.off()

#Scale location plot
png(file="../../images/scale-location-plot.png")
plot(reg, which=3, pch=20, col="blue")
dev.off()


