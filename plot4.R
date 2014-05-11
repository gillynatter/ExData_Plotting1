setwd("C:/Users/Owner/Desktop/R")
touse<-read.csv("household_power_consumption.txt",sep=";")
classes <-sapply(touse,class) # determining the classes of the columns
touse$Date<- as.Date(touse$Date,"%d/%m/%Y")
start <- as.Date("2007-02-01")
end <- as.Date("2007-02-02")
use <-touse[which(touse$Date %in% c(start,end)),]
use$Date<-weekdays(as.Date(use$Date,'%d-%m-%Y'))
use$Global_active_power <- as.numeric(paste(use$Global_active_power))
use$Global_reactive_power <- as.numeric(paste(use$Global_reactive_power))
use$Voltage <- as.numeric(paste(use$Voltage))
topl <-c(use$Sub_metering_1,use$Sub_metering_2,use$Sub_metering_3)
par(mfrow=c(2,2),mar=c(4,4,2,1)) ##  
barplot(use$Global_active_power,main=" ")
barplot(use$Voltage,main=" ",xlab="datetime",ylab="Voltage")
barplot(topl,main=" ",ylab="Energy sub metering")
barplot(use$Global_reactive_power,main=" ",xlab="datetime")
