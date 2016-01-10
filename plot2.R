#/usr/bin/R
# to run from shell:
# R CMD BATCH plot2.R ; cat plot2.Rout

data  <- read.csv("household_power_consumption_short.txt",sep=";")
png(filename="plot2.png", width = 480, height = 480)
plot(data$Global_active_power,type='l',xaxt="n",ylab='Global Active Power (kilowatts)',xlab="")
axis(1,at=c(1,1441,2880),labels=c("Thu","Fri","Sat"))
dev.off()

# it's possible to take automatic weekdays by:
# data$dates = strptime(paste(as.Date(data$Date),data$Time),"%Y-%m-%d %H:%M:%S" , tz="EST5EDT") 
# or
# data$dates = strptime(paste(as.Date(data$Date),data$Time),"%Y-%m-%d %H:%M:%S") 
# weekdays(data$dates[c(1,1441,2880)])

# plot(seq_along(data$Global_active_power), data$Global_active_power,type='l',xaxt="n")
