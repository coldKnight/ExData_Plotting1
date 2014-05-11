plot_topleft <- function() {
        df = read.table("household_power_consumption.txt", header=T, sep=';')
        df$Date = as.Date(df$Date, format ="%d/%m/%Y")
        df1=df[df$Global_active_power!="?",]
        d=df1[df1$Date=="2007-02-01"|df1$Date=="2007-02-02",]
        global_active_power=as.numeric(type.convert(as.character(d$Global_active_power), dec = "."))
        a=paste(d$Date,d$Time)
        t=as.POSIXct(strptime(a, "%Y-%m-%d %H:%M:%S"))
        plot(t,global_active_power,type='l',xlab=" ",ylab="Global Active Power")
}
plot_topright <- function() {
        df = read.table("household_power_consumption.txt", header=T, sep=';')
        df$Date = as.Date(df$Date, format ="%d/%m/%Y")
        df1=df[df$Global_active_power!="?",]
        d=df1[df1$Date=="2007-02-01"|df1$Date=="2007-02-02",]
        voltage=as.numeric(type.convert(as.character(d$Voltage), dec = "."))
        a=paste(d$Date,d$Time)
        t=as.POSIXct(strptime(a, "%Y-%m-%d %H:%M:%S"))
        plot(t,voltage,type='l',xlab="datetime",ylab="Voltage")
}
plot_bottomleft <- function() {
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
        plot(t,Sub_metering_1,type='l',col="Black",xlab=" ",ylab="Energy sub metering")
        lines(t,Sub_metering_2,col="Red")
        lines(t,Sub_metering_3,col="Blue")
        legend("topright",col=c("black","red","blue"),lty=c(1,1,1),legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))
}
plot_bottomright <- function() {
        df = read.table("household_power_consumption.txt", header=T, sep=';')
        df$Date = as.Date(df$Date, format ="%d/%m/%Y")
        df1=df[df$Global_active_power!="?",]
        d=df1[df1$Date=="2007-02-01"|df1$Date=="2007-02-02",]
        global_active_power=as.numeric(type.convert(as.character(d$Global_active_power), dec = "."))
        a=paste(d$Date,d$Time)
        t=as.POSIXct(strptime(a, "%Y-%m-%d %H:%M:%S"))
        global_reactive_power=as.numeric(type.convert(as.character(d$Global_reactive_power), dec = "."))
        plot(t,global_reactive_power,type='l',xlab="datetime",ylab="Global_reactive_power" )
}
plot6 <- function() {
        
        png(file="plot4.png",width=480,height=480)
        plot.new()
        par(mfrow=c(2,2))
        plot_topleft()
        plot_topright()
        plot_bottomleft()
        plot_bottomright()
        dev.off()
        
}