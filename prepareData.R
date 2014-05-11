#Get data if its not already downloaded
if(!file.exists("household_power_consumption.txt"))
{
        source("getData.R")
}

df = read.table("household_power_consumption.txt", sep = ";", na.strings="?",
                colClasses=c(rep("character",2), rep("numeric",7)), header=TRUE)
cat("Read",nrow(df),"records with",ncol(df),"columns\n" )

#Lets format date column
df$Date = as.Date(df$Date, format="%d/%m/%Y")
#Subset to two days we care about
day1 = as.Date("2007-02-01")
day2 = as.Date("2007-02-02")
df=df[df$Date %in% c(day1,day2),]
cat(nrow(df),"records remain after subsetting")

#Lets merge date and time columns and set their class
datetime = paste(as.character(df$Date),as.character(df$Time))
datetime = strptime(datetime, format="%Y-%m-%d %H:%M:%S")
df = cbind(datetime,df[,3:ncol(df)])
