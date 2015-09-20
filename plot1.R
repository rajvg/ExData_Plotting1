## household_power_consumption.txt
## manually downloaded to local folder and unzipped
hec <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings ="?", stringsAsFactors = FALSE)
hec$DateTime <- paste(hec$Date, hec$Time)
hec$DateTime <- as.character(strptime(hec$DateTime, "%d/%m/%Y %H:%M:%S"))
hec$DateTimePosixct <- as.POSIXct(hec$DateTime, "%d/%m/%Y %H:%M:%S")
library(dplyr)
subset_hec <- filter(hec, DateTime >= as.Date("2007-02-01 00:00:00"), DateTime < as.Date("2007-02-03 00:00:00"))
png("plot1.png")
hist(subset_hec$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()