setwd("C:/Users/Owner/Desktop/R")
touse<-read.csv("household_power_consumption.txt",sep=";")
classes <-sapply(touse,class) # determining the classes of the columns
touse$Date<- as.Date(touse$Date,"%d/%m/%Y")
start <- as.Date("2007-02-01")
end <- as.Date("2007-02-02")
use <-touse[which(touse$Date %in% c(start,end)),]
use$Date<-weekdays(as.Date(use$Date,'%d-%m-%Y'))
use$Global_active_power <- as.numeric(paste(use$Global_active_power))
barplot(use$Global_active_power,ylab="Global Active Power (Kilowatts)")
