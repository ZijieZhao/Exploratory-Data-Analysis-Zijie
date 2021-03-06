a<-read.table('power.txt',sep=';',header=T)
auseful<-a[a$Date=='1/2/2007'|a$Date=='2/2/2007',]
attach(auseful)
datetime <-strptime(paste(Date, Time, sep=" "), "%d/%m/%Y %H:%M:%S")
Sub_metering_1<-as.numeric(Sub_metering_1)
Sub_metering_2<-as.numeric(Sub_metering_2)
Sub_metering_3<-as.numeric(Sub_metering_3)
png('plot3.png',width=480,height=480)
plot(datetime,Sub_metering_1,type='l',ylab='Energy Submetering',xlab='')
lines(datetime,Sub_metering_2,type='l',col='red')
lines(datetime,Sub_metering_3,type='l',col='blue')
legend('topright',legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
       ,lty=1,col=c('black','red','blue'))
dev.off()