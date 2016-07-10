setwd("D:/Education/Education/Data Science/JHU/Exploratory Data Analysis/Project 1/exdata%2Fdata%2Fhousehold_power_consumption")
power<- read.table("household_power_consumption.txt",header=TRUE, stringsAsFactors = FALSE, sep = ";")
ssdata<-power[power$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(ssdata$Date, ssdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off() 