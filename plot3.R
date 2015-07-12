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