require(rCharts)
data(economics, package = "ggplot2")
econ <- transform(economics, date = as.character(date))
# Time series plot
m1 <- mPlot(x = "date", y = c("psavert", "uempmed"), type = "Line", 
            data = econ)
m1$set(pointSize = 0, lineWidth = 1)
m1$save('fig/m1.html', cdn = TRUE)
cat('<iframe src="fig/m1.html" width=100%, height=600></iframe>')
