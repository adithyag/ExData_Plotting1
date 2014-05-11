source("prepareData.R")
png(filename="plot2.png",width=480, height=480, bg="transparent")
plot(x=df$datetime,y=df$Global_active_power,type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.off()