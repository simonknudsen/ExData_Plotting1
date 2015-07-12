# --- Plot 2
with(hhpower, plot(Time, Global_active_power, main = "", pch = 20, type = "l", 
                   cex.lab=0.75, cex.axis=0.75, cex.main=0.75, cex.sub=0.75,
                   xlab="", ylab="Global Active Power (kilowatts)"))
dev.copy(png, file = "plot2.png", width = 480, height = 480)
dev.off()