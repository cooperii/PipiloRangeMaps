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

polychlor <- readShapePoly("/Users/cooper/Desktop/Pipilo/Emberizidae_RANGES_shapefiles/Pipilo_chlorurus_22721304.shp")

polychlor_resident<-lets.shFilter(polychlor, seasonal = 1)
polychlor_summer<-lets.shFilter(polychlor, seasonal = 2)
polychlor_winter<-lets.shFilter(polychlor, seasonal = 3)

map("world", regions="mexico", xlim=xcoords, ylim=ycoords,  resolution = 0, fill = FALSE)
map("world", regions="usa",xlim=xcoords, ylim=ycoords, resolution=0, fill=FALSE, add=TRUE)
map("world", regions="canada",xlim=xcoords, ylim=ycoords, resolution=0, fill=FALSE, add=TRUE)
map("world", regions="guatemala",xlim=xcoords, ylim=ycoords, resolution=0, fill=FALSE, add=TRUE)

plot(polychlor_resident, add=TRUE, xlim=c(-90,-65),ylim=ycoords, col=alpha("darkorchid4", 0.6), border=FALSE)
plot(polychlor_summer, add=TRUE, xlim=c(-90,-65),ylim=ycoords, col=alpha("darkorange3", 0.6), border=FALSE)
plot(polychlor_winter, add=TRUE, xlim=c(-90,-65),ylim=ycoords, col=alpha("dodgerblue1", 0.6), border=FALSE)