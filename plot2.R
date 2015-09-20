png("plot2.png")
plot(subset_hec$DateTimePosixct,subset_hec$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()