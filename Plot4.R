#       
#       Plot1.R
#       
#       read data

dfshort         <- read.csv("C:\\_Zdata\\MachineLearning\\ExploratoryDataAnalysis\\household_power_consumption_short.txt", header=TRUE, sep=",")
nrow(dfshort)
names(dfshort)
#
#       row looks like this:
#       "66637","1/2/2007","00:00:00","0.326","0.128","243.150","1.400","0.000","0.000",0,2007-02-01
#
dfshort$datetime                        <- as.POSIXct(paste0(dfshort$Date, " ", dfshort$Time), format="%d/%m/%Y %H:%M:%S")

png("C:\\_Zdata\\MachineLearning\\ExploratoryDataAnalysis\\Plot4.png")
par(mfrow=c(2,2))

with( dfshort, plot( Global_active_power~datetime, type="l", xlab="", ylab="Global Active Power"))

with( dfshort, plot( Voltage~datetime, type="l", xlab="datetime", ylab="Voltage"))

with( dfshort, plot( Sub_metering_1~datetime, type="l", xlab="", ylab="Energy sub metering", col="black"))
with( dfshort, lines( Sub_metering_2~datetime, type="l", xlab="", ylab="Energy sub metering", col="red"))
with( dfshort, lines( Sub_metering_3~datetime, type="l", xlab="", ylab="Energy sub metering", col="blue"))
legend( "topright", 500, c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
                ,lty=c(1,1), lwd=c(1.5, 1.5),col=c("black", "red", "blue"), bty="n")

with( dfshort, plot( Global_reactive_power~datetime, type="l", xlab="datetime", ylab="Global_reactive_power"))

dev.off()



cat(" all done\n")
