#
#       read data 
#
df              <- read.csv("C:\\_Zdata\\MachineLearning\\ExploratoryDataAnalysis\\household_power_consumption.txt", header=TRUE, sep=";")


df$DateCVT      <- as.Date(strptime(df$Date,"%d/%m/%Y"))
dt_range_start  <- as.Date("2007-02-01")
dt_range_end    <- as.Date("2007-02-02")
df_needed       <- df[(df$DateCVT >= dt_range_start) & (df$DateCVT <= dt_range_end), ]
write.csv(df_needed, file = "C:\\_Zdata\\MachineLearning\\ExploratoryDataAnalysis\\household_power_consumption_short.txt")

#       re-read to confirm all good
dfshort         <- read.csv("C:\\_Zdata\\MachineLearning\\ExploratoryDataAnalysis\\household_power_consumption_short.txt", header=TRUE, sep=",")
nrow(dfshort)
names(dfshort)
#
#       row looks like this:
#       "66637","1/2/2007","00:00:00","0.326","0.128","243.150","1.400","0.000","0.000",0,2007-02-01
#

cat(" all done\n")

