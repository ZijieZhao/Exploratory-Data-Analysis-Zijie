a<-read.table('power.txt',sep=';',header=T)
auseful<-a[a$Date=='1/2/2007'|a$Date=='2/2/2007',]
attach(auseful)
Global_active_power<-as.numeric(Global_active_power)
datetime <-strptime(paste(Date, Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png('plot2.png',width=480,height = 480)
plot(datetime,Global_active_power,type='l',xlab='',ylab="Global Active Power (kilowatts)")
dev.off()