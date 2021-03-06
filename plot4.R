a<-read.table('power.txt',sep=';',header=T)
auseful<-a[a$Date=='1/2/2007'|a$Date=='2/2/2007',]
attach(auseful)
datetime <-strptime(paste(Date, Time, sep=" "), "%d/%m/%Y %H:%M:%S")
Sub_metering_1<-as.numeric(Sub_metering_1)
Sub_metering_2<-as.numeric(Sub_metering_2)
Sub_metering_3<-as.numeric(Sub_metering_3)
Voltage<-as.numeric(Voltage)
Global_active_power<-as.numeric(Global_active_power)
Global_reactive_power<-as.numeric(Global_reactive_power)
png('plot4.png',width=480,height=480)
par(mfrow=c(2,2))
plot(datetime,Global_active_power,type='l',xlab='',ylab="Global Active Power (kilowatts)")
plot(datetime,Voltage,type='l',xlab='datetime',ylab='Voltage')
plot(datetime,Sub_metering_1,type='l',ylab='Energy Submetering',xlab='')
lines(datetime,Sub_metering_2,type='l',col='red')
lines(datetime,Sub_metering_3,type='l',col='blue')
legend('topright',legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
       ,lty=1,col=c('black','red','blue'))
plot(datetime,Global_reactive_power,type='l',xlab='datetime',ylab='Global_reactive_power')
dev.off()