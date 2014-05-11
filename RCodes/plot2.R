#Vatsal Srivastava   vatsal410@gmail.com
#This code is for the Course Project 1 of the Coursera course Exploratory Data Analysis

plot2=function()
{
        df = read.table("household_power_consumption.txt", header=T, sep=';')
        df$Date = as.Date(df$Date, format ="%d/%m/%Y")
        df1=df[df$Global_active_power!="?",]
        d=df1[df1$Date=="2007-02-01"|df1$Date=="2007-02-02",]
        global_active_power=as.numeric(type.convert(as.character(d$Global_active_power), dec = "."))
        a=paste(d$Date,d$Time)
        t=as.POSIXct(strptime(a, "%Y-%m-%d %H:%M:%S"))
        png(file="plot2.png",width=480,height=480)
        plot.new()
        plot(t,global_active_power,type='l',
             xlab=" ",
             ylab="Global Active Power (kilowatts)")
        dev.off()
        #plot(t, global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
        
}
