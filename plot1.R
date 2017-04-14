a<-read.table('power.txt',sep=';',header=T)
a$Date<-as.Date(as.character(a$Date),format='%d/%m/%Y')
auseful<-a[a$Date==as.Date('1/2/2007',format='%d/%m/%Y')|a$Date==as.Date('2/2/2007',format='%d/%m/%Y'),]
attach(auseful)
Global_active_power<-as.numeric(Global_active_power)
png('plot1.png',width=480,height=480)
hist(Global_active_power,col='red',ylab='Frequency',xlab='Global Active Power (kilowatts)',
     main='Global Active Power')
dev.off()