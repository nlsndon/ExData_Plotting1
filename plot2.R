a <- read.table('C:\\Users\\Nixon Joel\\Desktop\\coursera\\Exploratory Data Analysis\\household_power_consumption.txt', sep=';', header=T, colClasses = c('character', 'character', 'numeric','numeric', 'numeric', 'numeric','numeric', 'numeric', 'numeric'),
                na.strings='?')
a$DateTime <- strptime(paste(a$Date, a$Time),"%d/%m/%Y %H:%M:%S")
b <- subset(a,as.Date(DateTime) >= as.Date("2007-02-01") & as.Date(DateTime) <= as.Date("2007-02-02"))
png("plot2.png", height=480, width=480)
plot(b$DateTime, b$Global_active_power, pch=NA, xlab="", ylab="Global Active Power (kilowatts)")
lines(b$DateTime, b$Global_active_power)
dev.off()