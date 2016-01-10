#/usr/bin/R
# to run from shell:
# R CMD BATCH plot2.R ; cat plot2.Rout

data  <- read.csv("household_power_consumption_short.txt",sep=";")
png(filename="plot3.png", width = 480, height = 480)
plot(data$Sub_metering_1,type='l',xaxt="n",ylab='Energy sub metering',xlab="",col="black")
lines(data$Sub_metering_2, col="red")
lines(data$Sub_metering_3,col="blue")
axis(1,at=c(1,1441,2880),labels=c("Thu","Fri","Sat"))
# legend("topright",  col = c("black", "red", "blue"), legend = c("sub_metering_1", "sub_metering_2", "sub_metering_3"), pch=2)
legend("topright",  col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1))
dev.off()

