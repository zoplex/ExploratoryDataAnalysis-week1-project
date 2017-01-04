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
dfshort$Global_active_power             <- as.numeric(dfshort$Global_active_power)
dfshort$datetime                        <- as.POSIXct(paste0(dfshort$Date, " ", dfshort$Time), format="%d/%m/%Y %H:%M:%S")

png("C:\\_Zdata\\MachineLearning\\ExploratoryDataAnalysis\\Plot2.png")
with( dfshort, plot( Global_active_power~datetime, type="l", xlab="", ylab="Global Active Power (kilowats)"))
#with( dfshort, lines(Global_active_power~datetime, type="o", pch=22, lty=2, col="red"))

dev.off()



cat(" all done\n")
