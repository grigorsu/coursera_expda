#/usr/bin/R

data  <- read.csv("household_power_consumption_short.txt",sep=";")
png(filename="plot1.png", width = 480, height = 480)
hist(data$Global_active_power,col='red',xlab='Global Active Power (kilowatts)', main="Global Active Power")
dev.off()

