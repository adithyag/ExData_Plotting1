source("prepareData.R")
png(filename="plot3.png",width=480, height=480, bg="transparent")
plot(x=df$datetime,y=df$Sub_metering_1,type="l", ylab="Energy sub metering", xlab="")
lines(x=df$datetime,y=df$Sub_metering_2,col="Red",type="l")
lines(x=df$datetime,y=df$Sub_metering_3,col="Blue",type="l")
legend("topright", lty=rep(1,3), col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()

