setwd("C:/Users/Owner/Desktop/R")
touse<-read.csv("household_power_consumption.txt",sep=";")
classes <-sapply(touse,class) # determining the classes of the columns
touse$Date<- as.Date(touse$Date,"%d/%m/%Y")
start <- as.Date("2007-02-01")
end <- as.Date("2007-02-02")
use <-touse[which(touse$Date %in% c(start,end)),]
use$Global_active_power <- as.numeric(paste(use$Global_active_power))
hist(use$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
