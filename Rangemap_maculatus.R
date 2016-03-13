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

xcoords<-c(-128,-65)
ycoords<-c(13,55)

polymacul<-readShapePoly("/Users/cooper/Desktop/Pipilo/Emberizidae_RANGES_shapefiles/Pipilo_maculatus_22729113.shp")
polymacul_resident<-lets.shFilter(polymacul, seasonal = 1)
polymacul_summer<-lets.shFilter(polymacul, seasonal = 2)
polymacul_winter<-lets.shFilter(polymacul, seasonal = 3)
polyerythro <- readShapePoly("/Users/cooper/Desktop/Pipilo/Emberizidae_RANGES_shapefiles/Pipilo_erythrophthalmus_22721310.shp") 
polymacul <- readShapePoly("/Users/cooper/Desktop/Pipilo/Emberizidae_RANGES_shapefiles/Pipilo_maculatus_22729113.shp")
polyocai <- readShapePoly("/Users/cooper/Desktop/Pipilo/Emberizidae_RANGES_shapefiles/Pipilo_ocai_22721307.shp")
polychlor <- readShapePoly("/Users/cooper/Desktop/Pipilo/Emberizidae_RANGES_shapefiles/Pipilo_chlorurus_22721304.shp")
mexico_states <- readShapePoly("/Users/cooper/Desktop/Pipilo/mexstates/mexstates.shp") 

map(database= "state", xlim=xcoords, ylim=ycoords, resolution=0, col=alpha("black"), fill=FALSE, lwd=0.25)
plot(mexico_states, add=TRUE, xlim=coords ,ylim=ycoords, fill=FALSE, resolution=0, border=alpha("black"), lwd=0.25)
plot(canada_provs, add=TRUE, xlim=coords,ylim=ycoords, fill=FALSE, resolution=0, border=alpha("black"), lwd=0.25)
#map("world", regions="mexico", xlim=xcoords, ylim=ycoords,  resolution = 0, fill = FALSE, add=TRUE, lwd=0.5)
#map("world", regions="usa",xlim=xcoords, ylim=ycoords, resolution=0, fill=FALSE, add=TRUE, lwd=0.5)
map("world", regions="canada",xlim=xcoords, ylim=ycoords, resolution=0, fill=FALSE, add=TRUE, lwd=0.5)
map("world", regions="guatemala",xlim=xcoords, ylim=ycoords, resolution=0, fill=FALSE, add=TRUE, lwd=0.5)
plot(polymacul_resident, add=TRUE, xlim=c(-90,-65),ylim=ycoords, col=alpha("darkorchid4", 0.6), border=FALSE)
plot(polymacul_summer, add=TRUE, xlim=c(-90,-65),ylim=ycoords, col=alpha("darkorange2", 0.6), border=FALSE)
plot(polymacul_winter, add=TRUE, xlim=c(-90,-65),ylim=ycoords, col=alpha("dodgerblue1", 0.6), border=FALSE)
#plot(polymacul, add=TRUE, xlim=xcoords,ylim=ycoords, col=alpha("red", 0.6), border=FALSE)
#plot(polyocai, add=TRUE, xlim=xcoords,ylim=ycoords, col=alpha("green", 0.6), border=FALSE)
#plot(polychlor, add=TRUE, xlim=xcoords,ylim=ycoords, col=alpha("orange", 0.6), border=FALSE)