require(rCharts)
names(iris) = gsub("\\.", "", names(iris))
# Scatter plot
r1 <- rPlot(SepalLength ~ SepalWidth | Species, color = 'Species', 
            data = iris, type = 'point')
r1$save('fig/r1.html', cdn = TRUE)
cat('<iframe src="fig/r1.html" width=100%, height=600></iframe>')
# Bar plot
hair_eye = as.data.frame(HairEyeColor)
r2 <- rPlot(Freq ~ Hair | Eye, color = 'Eye', 
            data = hair_eye, type = 'bar')
r2$save('fig/r2.html', cdn = TRUE)
cat('<iframe src="fig/r2.html" width=100%, height=600></iframe>')
# How publish
r3 <- rPlot(mpg ~ wt | am + vs, data = mtcars, type = 'point', 
            color = 'gear')
r3$print("chart3") # print out the js
r3$save('myPlot.html') # save as html file
r3$publish('myPlot', host ='gist') # save to gist, rjson required
r3$publish('myPlot', host = 'rpubs') # save to rpubs