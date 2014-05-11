plot1=function()
{
        df = read.table("household_power_consumption.txt", header=T, sep=';')
        df$Date = as.Date(df$Date, format ="%d/%m/%Y")
        df1=df[df$Global_active_power!="?",]
        d=df1[df1$Date=="2007-02-01"|df1$Date=="2007-02-02",]
        global_active_power=as.numeric(type.convert(as.character(d$Global_active_power), dec = "."))
        png(file="plot1.png",width=480,height=480)
        plot.new()
        hist(global_active_power,main="Global Active Power", 
             xlab="Global Active Power (kilowatts)",
             col="Red")
        dev.off()
        #hist(global_active_power,col="red",main="Global active power",xlab="Global active power(kilowatts)")
        
}