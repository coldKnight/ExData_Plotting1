#Vatsal Srivastava   vatsal410@gmail.com
#This code is for the Course Project 1 of the Coursera course Exploratory Data Analysis

plot3=function(){
 
        df = read.table("household_power_consumption.txt", header=T, sep=';')
        df$Date = as.Date(df$Date, format ="%d/%m/%Y")
        df1=df[df$Global_active_power!="?",]
        d=df1[df1$Date=="2007-02-01"|df1$Date=="2007-02-02",]
        global_active_power=as.numeric(type.convert(as.character(d$Global_active_power), dec = "."))
        a=paste(d$Date,d$Time)
        t=as.POSIXct(strptime(a, "%Y-%m-%d %H:%M:%S"))
        Sub_metering_1=as.numeric(type.convert(as.character(d$Sub_metering_1), dec = "."))
        Sub_metering_2=as.numeric(type.convert(as.character(d$Sub_metering_2), dec = "."))
        Sub_metering_3=as.numeric(type.convert(as.character(d$Sub_metering_3), dec = "."))
        plot(t, d$Sub_metering_3, type="l", xlab="", ylab="Global Active Power (kilowatts)",axes=T,ylim=c
             (0,30),col="blue")
        par(new=T)
        lines(t, as.numeric(as.character(d$Sub_metering_2)), type = "l", col = "red")
        par(new=T)
        png(file="plot3.png",width=480,height=480)
        plot.new()
        plot(t,Sub_metering_1,type='l',col="Black",xlab=" ",ylab="Energy sub metering")
        lines(t,Sub_metering_2,col="Red")
        lines(t,Sub_metering_3,col="Blue")
        legend("topright",col=c("black","red","blue"),lty=c(1,1,1),legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))
        dev.off()
        
}
