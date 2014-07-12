source("load_data.R")

png(file="plot3.png")

plot(house$DateTime, house$Sub_metering_1, 
     col="black", type="l", ylab = "Energy sub metering", xlab = "")
lines(house$DateTime, house$Sub_metering_2, 
      col="red", type = "l")
lines(house$DateTime, house$Sub_metering_3, 
      col="blue", type = "l")
legend("topright", 
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       col=c("black","red","blue"),lty = 1)

dev.off()
