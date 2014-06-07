require(rCharts)
t1 <- dTable(airquality, sPaginationType = "full_numbers") 
t1$save('fig/t1.html', cdn = TRUE)
cat('<iframe src="fig/t1.html" width=100%, height=600></iframe>')
