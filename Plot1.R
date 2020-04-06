setwd("C:\\Users\\Intel\\Documents\\Datasets\\exdata_data_household_power_consumption")

#-----Import data-----#
fullData <- read.table(".\\household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#-----Reduce the data and bring it in the required range-----#
reducedData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#-----Plot the figure and save it-----#
png("plot1.png", width=480, height=480)
hist(as.numeric(reducedData$Global_active_power), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()