labels <- read.table("household_power_consumption.txt", 
                     nrows = 1, sep = ";",na.strings="?", 
                     stringsAsFactors = FALSE)
house <- read.table("household_power_consumption.txt", 
                    skip=66637, nrows = 2880, sep = ";", na.strings="?",
                    col.names = labels)
house$DateTime <- strptime(paste(house$Date, house$Time), 
                           "%d/%m/%Y %H:%M:%S", tz = "UTC")
