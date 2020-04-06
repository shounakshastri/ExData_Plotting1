setwd("C:\\Users\\Intel\\Documents\\Datasets\\exdata_data_household_power_consumption")

#-----Import data-----#
fullData <- read.table(".\\household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#-----Reduce the data and bring it in the required range-----#
reducedData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
dateAndTime <- strptime(paste(reducedData$Date, reducedData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

#-----Plot the figure and save it-----#
png("plot2.png", width=480, height=480)
plot(dateAndTime, as.numeric(reducedData$Global_active_power), type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()