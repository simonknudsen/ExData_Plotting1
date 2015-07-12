# --- Plot 4
par(mfrow = c(2, 2), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0), 
    cex.lab=0.6, cex.axis=0.6, cex.main=0.6, cex.sub=0.6) 
with(hhpower, {
  plot(Time, Global_active_power, type = "l", 
       xlab="", ylab="Global Active Power")
  plot(Time, Voltage, type = "l", 
       xlab="datetime", ylab="Voltage")
  plot(Time, Sub_metering_1, type = "n", 
       xlab="", ylab="Energy sub metering", 
       cex.lab=0.75, cex.axis=0.75, cex.main=0.75, cex.sub=0.75)
  points(Time, Sub_metering_1, col = "black", type = "l")
  points(Time, Sub_metering_2, col = "red", type = "l")
  points(Time, Sub_metering_3, col = "blue", type = "l")
  legend("topright", 
         text.width = 70000,
         bty = "n",
         y.intersp = 0.5,
         c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         col = c("black", "red", "blue"), 
         cex=0.6,
         lty=c(1,1,1))
  plot(Time, Global_reactive_power, type = "l", 
       xlab="datetime", ylab="Global_reactive_power")
})
dev.copy(png, file = "plot4.png", width = 480, height = 480)
dev.off()