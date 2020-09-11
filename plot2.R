file <- "./household_power_consumption.txt"
data <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
two_days <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

d_t <- strptime(paste(two_days$Date, two_days$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width=480, height=480)
with(two_days, plot(d_t, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)"))
dev.off()
