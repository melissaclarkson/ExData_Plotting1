# plot 4 for Course project 1, Exploratory data analysis
# data from UCI Machine Learning Repository, http://archive.ics.uci.edu/ml/
# electric power comsuption, https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption
# https://github.com/rdpeng/ExData_Plotting1

# read in data and subset for only first and second days of Feb 2007, format day and time
data <- read.table("household_power_consumption.txt", sep=";", header = TRUE, na.strings = "?")
twoDayData <- data[(data$Date == "1/2/2007" | data$Date == "2/2/2007"),  ] 
daysAndTimes <- paste(twoDayData$Date, twoDayData$Time)
twoDayData$Time <- strptime(daysAndTimes, format = "%d/%m/%Y %H:%M:%S")
twoDayData$Date <- strptime(twoDayData$Date, format = "%d/%m/%Y")