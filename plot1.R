
dat_raw<- read.table("household_power_consumption.txt", skip= 66637,nrows = 2880,sep=";",col.names = colnames(read.table("household_power_consumption.txt", nrow = 1, header = TRUE,sep=";")))

png(filename="plot1.png",width = 480, height = 480, units = "px")
hist(dat_raw$Global_active_power,col="red",xlab="Global Active Power(kilowatts)",main="Global Active Power")

dev.off()