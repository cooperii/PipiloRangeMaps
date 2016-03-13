require(maps)
require(ggplot2)
require(mapdata)
require(maptools)
require (scales)
library(maps)
library(ggplot2)
library(mapdata)
library(maptools)
library(scales)

xcoords<-c(-125,-65)
ycoords<-c(13,55)

polyerythro <- readShapePoly("/Users/cooper/Desktop/Pipilo/Emberizidae_RANGES_shapefiles/Pipilo_erythrophthalmus_cleancut2.shp") 

polyerythro_resident<-lets.shFilter(polyerythro, seasonal = 1)
polyerythro_summer<-lets.shFilter(polyerythro, seasonal = 2)
polyerythro_winter<-lets.shFilter(polyerythro, seasonal = 3)

map("world", regions="mexico", xlim=xcoords, ylim=ycoords,  resolution = 0, fill = FALSE)
map("world", regions="usa",xlim=xcoords, ylim=ycoords, resolution=0, fill=FALSE, add=TRUE)
map("world", regions="canada",xlim=xcoords, ylim=ycoords, resolution=0, fill=FALSE, add=TRUE)
map("world", regions="guatemala",xlim=xcoords, ylim=ycoords, resolution=0, fill=FALSE, add=TRUE)

plot(polyerythro_resident, add=TRUE, xlim=c(-90,-65),ylim=ycoords, col=alpha("darkorchid4", 0.6), border=FALSE)
plot(polyerythro_summer, add=TRUE, xlim=c(-90,-65),ylim=ycoords, col=alpha("darkorange2", 0.6), border=FALSE)
plot(polyerythro_winter, add=TRUE, xlim=c(-90,-65),ylim=ycoords, col=alpha("dodgerblue1", 0.6), border=FALSE)