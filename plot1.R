source("prepareData.R")
png(filename="plot1.png",width=480, height=480, bg="transparent")
hist(df$Global_active_power, col="Red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()