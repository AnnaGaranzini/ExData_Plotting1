file <- "./household_power_consumption.txt"
data <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
two_days <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

png("plot1.png", width=480, height=480)
hist(as.numeric(as.character(two_days$Global_active_power)),col = "red",xlab = "Global Active Power (kilowatts)",main="Global Active Power")
dev.off()