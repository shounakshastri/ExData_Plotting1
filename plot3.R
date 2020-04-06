setwd("C:\\Users\\Intel\\Documents\\Datasets\\exdata_data_household_power_consumption")

#-----Import data-----#
fullData <- read.table(".\\household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#-----Reduce the data and bring it in the required range-----#
reducedData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
dateAndTime <- strptime(paste(reducedData$Date, reducedData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

#-----Plot the figure and save it-----#
png("plot3.png", width=480, height=480)
plot(dateAndTime, as.numeric(reducedData$Sub_metering_1), type="l", ylab="Energy Submetering", xlab="")
lines(dateAndTime, as.numeric(reducedData$Sub_metering_2), type="l", col="red")
lines(dateAndTime, as.numeric(reducedData$Sub_metering_3), type="l", col="blue")
legend("topright", c("sub_metering_1", "sub_metering_2", "sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()