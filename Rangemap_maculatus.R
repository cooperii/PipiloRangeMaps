require(maps)
require(ggplot2)
require(mapdata)
require(maptools)
require (scales)
require(letsR)
library(maps)
library(ggplot2)
library(mapdata)
library(maptools)
library(scales)
library(letsR)

xcoords<-c(-128,-65)
ycoords<-c(13,55)

polymacul<-readShapePoly("/Users/cooper/Desktop/Pipilo/Emberizidae_RANGES_shapefiles/Pipilo_maculatus_22729113.shp")
polymacul_resident<-lets.shFilter(polymacul, seasonal = 1)
polymacul_summer<-lets.shFilter(polymacul, seasonal = 2)
polymacul_winter<-lets.shFilter(polymacul, seasonal = 3)

#
#Use this set for fulls States and Provinces#
mexico_states <- readShapePoly("/Users/cooper/Desktop/Pipilo/mexstates/mexstates.shp") 
canada_provs<-readShapePoly("/Users/cooper/Desktop/Pipilo/canada_provinces/PROVINCE.shp")

map(database= "state", xlim=xcoords, ylim=ycoords, resolution=0, col=alpha("black"), fill=FALSE, lwd=0.25)
plot(mexico_states, add=TRUE, xlim=coords ,ylim=ycoords, fill=FALSE, resolution=0, border=alpha("black"), lwd=0.25)
plot(canada_provs, add=TRUE, xlim=coords,ylim=ycoords, fill=FALSE, resolution=0, border=alpha("black"), lwd=0.25)
map("world", regions="guatemala",xlim=xcoords, ylim=ycoords, resolution=0, fill=FALSE, add=TRUE, lwd=0.5)
plot(polymacul_resident, add=TRUE, xlim=c(-90,-65),ylim=ycoords, col=alpha("darkorchid4", 0.6), border=FALSE)
plot(polymacul_summer, add=TRUE, xlim=c(-90,-65),ylim=ycoords, col=alpha("darkorange2", 0.6), border=FALSE)
plot(polymacul_winter, add=TRUE, xlim=c(-90,-65),ylim=ycoords, col=alpha("dodgerblue1", 0.6), border=FALSE)

#
#Use this set for Countries#
map("world", regions="mexico", xlim=xcoords, ylim=ycoords,  resolution = 0, fill = FALSE, lwd=0.5)
map("world", regions="usa",xlim=xcoords, ylim=ycoords, resolution=0, fill=FALSE, add=TRUE, lwd=0.5)
map("world", regions="canada",xlim=xcoords, ylim=ycoords, resolution=0, fill=FALSE, add=TRUE, lwd=0.5)
map("world", regions="guatemala",xlim=xcoords, ylim=ycoords, resolution=0, fill=FALSE, add=TRUE,lwd=0.5)
plot(polymacul_resident, add=TRUE, xlim=c(-90,-65),ylim=ycoords, col=alpha("darkorchid4", 0.6), border=FALSE)
plot(polymacul_summer, add=TRUE, xlim=c(-90,-65),ylim=ycoords, col=alpha("darkorange2", 0.6), border=FALSE)
plot(polymacul_winter, add=TRUE, xlim=c(-90,-65),ylim=ycoords, col=alpha("dodgerblue1", 0.6), border=FALSE)
