source("load_data.R")

png(file="plot4.png")

par(mfrow = c(2, 2))

with(airquality, {
    # Top Left
    plot(house$DateTime, house$Global_active_power, 
         type="l", ylab = "Global Active Power", xlab = "")
    
    # Top Right
    plot(house$DateTime, house$Voltage, 
         type="l", ylab = "Voltage", xlab = "datetime")
    
    # Bottom Left
    plot(house$DateTime, house$Sub_metering_1, 
         col="black", type="l", ylab = "Energy sub metering", xlab = "")
    lines(house$DateTime, house$Sub_metering_2, 
          col="red", type = "l")
    lines(house$DateTime, house$Sub_metering_3, 
          col="blue", type = "l")
    legend("topright", 
           legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
           col=c("black","red","blue"), lty = 1, bty="n")
    
    # Bottom Right
    plot(house$DateTime, house$Global_reactive_power, 
         type="l", ylab = "Global_reactive_power", xlab = "datetime")
})

dev.off()
