source("load_data.R")

png(file="plot2.png")

plot(house$DateTime, house$Global_active_power, 
     type="l", ylab = "Global Active Power (kilowatts)", xlab = "")

dev.off()
