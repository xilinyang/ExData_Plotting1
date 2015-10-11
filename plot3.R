
dat_raw<- read.table("household_power_consumption.txt", skip= 66637,nrows = 2880,sep=";",col.names = colnames(read.table("household_power_consumption.txt", nrow = 1, header = TRUE,sep=";")))
x<-paste(dat_raw$Date,dat_raw$Time)
y<-strptime(x,"%d/ %m/ %Y %H:%M:%S")
png("plot3.png",width = 480, height = 480, units = "px") 
plot(y,dat_raw$Sub_metering_1,type="l",col="black",xlab="",ylab="Energy sub setering")
lines(y,dat_raw$Sub_metering_2,type="l",col="red")
lines(y,dat_raw$Sub_metering_3,type="l",col="blue")
legend("topright",lty=c(1,1,1),col=c("black","red","blue"),c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))

dev.off()