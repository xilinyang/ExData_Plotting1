
dat_raw<- read.table("household_power_consumption.txt", skip= 66637,nrows = 2880,sep=";",col.names = colnames(read.table("household_power_consumption.txt", nrow = 1, header = TRUE,sep=";")))
x<-paste(dat_raw$Date,dat_raw$Time)
y<-strptime(x,"%d/ %m/ %Y %H:%M:%S")
png("plot4.png",width = 480, height = 480, units = "px") 

par(mfrow=c(2,2))



plot(y,dat_raw$Global_active_power,type="l",ylab="Global Active Power(kilowatts)",xlab="")
plot(y,dat_raw$Voltage,type="l",ylab="Voltage",xlab="datetime")

plot(y,dat_raw$Sub_metering_1,type="l",col="black",xlab="",ylab="Energy sub metering")
lines(y,dat_raw$Sub_metering_2,type="l",col="red")
lines(y,dat_raw$Sub_metering_3,type="l",col="blue")
legend("topright",bty = "n",lty=c(1,1,1),col=c("black","red","blue"),cex=1,c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))

plot(y,dat_raw$Global_reactive_power,type="l",ylab="Global Reactive Power(kilowatts)",xlab="datetime")


dev.off()