file <- "./household_power_consumption.txt"
data <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
two_days <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
d_t <- strptime(paste(two_days$Date, two_days$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png("plot3.png", width=480, height=480)
plot(d_t, two_days$Sub_metering_1, type="l", xlab="", ylab = "Energy sub metering")
lines(d_t, two_days$Sub_metering_2, type="l", col="red")
lines(d_t, two_days$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1, lwd=2)
dev.off()