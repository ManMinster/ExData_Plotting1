file <- "household_power_consumption.txt"

data <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subsetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

date_time <- paste(subsetData$Date, subsetData$Time, sep = " ")
date_time_formatted <- strptime(date_time, format = "%d/%m/%Y %H:%M:%S")

globalActivePower <- as.numeric(subsetData$Global_active_power)

plot(date_time_formatted, globalActivePower, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

dev.off()