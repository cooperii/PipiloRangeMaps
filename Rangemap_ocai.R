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

xcoords_small<-c(-120,-80)
ycoords_small<-c(13,25)

polyocai <- readShapePoly("/Users/cooper/Desktop/Pipilo/Emberizidae_RANGES_shapefiles/Pipilo_ocai_22721307.shp")
polymacul<-readShapePoly("/Users/cooper/Desktop/Pipilo/Emberizidae_RANGES_shapefiles/Pipilo_maculatus_22729113.shp")
polymacul_resident<-lets.shFilter(polymacul, seasonal = 1)


map("world", regions="mexico", xlim=xcoords_small, ylim=ycoords_small,  resolution = 0, fill = FALSE)
map("world", regions="usa",xlim=xcoords_small, ylim=ycoords_small, resolution=0, fill=FALSE, add=TRUE)
map("world", regions="canada",xlim=xcoords_small, ylim=ycoords_small, resolution=0, fill=FALSE, add=TRUE)
map("world", regions="guatemala",xlim=xcoords_small, ylim=ycoords_small, resolution=0, fill=FALSE, add=TRUE)

plot(polymacul_resident, add=TRUE, xlim=c(-90,-65),ylim=ycoords, col=alpha("darkorchid4", 0.6), border=FALSE)
plot(polyocai, add=TRUE, xlim=xcoords_small, ylim=ycoords_small, col=alpha("darkred", 0.7), border=FALSE)
#plot(polymacul_resident, add=TRUE, xlim=c(-90,-65),ylim=ycoords, fill=FALSE, border="red", lwd=2)
