hhpower_all <- read.delim("household_power_consumption.txt", sep = ";", stringsAsFactors=F)

is.na(hhpower_all) <- hhpower_all=="?"

hhpower_all$Time <- strptime(paste(hhpower_all$Date, " ", hhpower_all$Time), format = "%d/%m/%Y %H:%M:%S")
hhpower_all$Date <- as.Date(hhpower_all$Date, "%d/%m/%Y")
hhpower_all$Global_active_power <- as.numeric(hhpower_all$Global_active_power)
hhpower_all$Global_reactive_power <- as.numeric(hhpower_all$Global_reactive_power)
hhpower_all$Global_intensity <- as.numeric(hhpower_all$Global_intensity)
hhpower_all$Voltage <- as.numeric(hhpower_all$Voltage)
hhpower_all$Sub_metering_1 <- as.numeric(hhpower_all$Sub_metering_1)
hhpower_all$Sub_metering_2 <- as.numeric(hhpower_all$Sub_metering_2)
hhpower_all$Sub_metering_3 <- as.numeric(hhpower_all$Sub_metering_3)

hhpower <- subset(hhpower_all , Date == as.Date("2007-02-01") | Date == as.Date("2007-02-02"))

# --- Plot 3
with(hhpower, plot(Time, Sub_metering_1, type = "n", 
                   xlab="", ylab="Energy sub metering", 
                   cex.lab=0.75, cex.axis=0.75, cex.main=0.75, cex.sub=0.75))
with(hhpower, points(Time, Sub_metering_1, col = "black", type = "l"))
with(hhpower, points(Time, Sub_metering_2, col = "red", type = "l"))
with(hhpower, points(Time, Sub_metering_3, col = "blue", type = "l"))
legend("topright", 
       text.width = 45000,
       y.intersp = 0.5,
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), 
       cex=0.75,
       lty=c(1,1,1))
dev.copy(png, file = "plot3.png", width = 480, height = 480)
dev.off()