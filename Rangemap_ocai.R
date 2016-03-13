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

polyocai <- readShapePoly("/Users/cooper/Desktop/Pipilo/Emberizidae_RANGES_shapefiles/Pipilo_ocai_22721307.shp")


map("world", regions="mexico", xlim=xcoords, ylim=ycoords,  resolution = 0, fill = FALSE)
map("world", regions="usa",xlim=xcoords, ylim=ycoords, resolution=0, fill=FALSE, add=TRUE)
map("world", regions="canada",xlim=xcoords, ylim=ycoords, resolution=0, fill=FALSE, add=TRUE)
map("world", regions="guatemala",xlim=xcoords, ylim=ycoords, resolution=0, fill=FALSE, add=TRUE)

plot(polyocai, add=TRUE, xlim=xcoords,ylim=ycoords, col=alpha("darkorchid4", 0.6), border=FALSE)
