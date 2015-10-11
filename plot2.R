
dat_raw<- read.table("household_power_consumption.txt", skip= 66637,nrows = 2880,sep=";",col.names = colnames(read.table("household_power_consumption.txt", nrow = 1, header = TRUE,sep=";")))
x<-paste(dat_raw$Date,dat_raw$Time)
y<-strptime(x,"%d/ %m/ %Y %H:%M:%S")
png("plot2.png",width = 480, height = 480, units = "px") 
plot(y,dat_raw$Global_active_power,type="l",ylab="Global Active Power(kilowatts)",xlab="")
dev.off()