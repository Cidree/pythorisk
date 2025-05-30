% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mec-soilwater.R
\name{mec_soilwater}
\alias{mec_soilwater}
\title{Water inoculum movement}
\usage{
mec_soilwater(dem, poi, th = 100, quiet = FALSE)
}
\arguments{
\item{dem}{a single-band \code{SpatRaster} with a digital elevation model}

\item{poi}{a single-point \code{sf} object denoting the point of interest
to run the simulations}

\item{th}{threshold of flow accumulation to delineate streams}

\item{quiet}{if \code{TRUE}, suppress any message or progress bar}
}
\value{
A \code{SpatRaster}
}
\description{
Simulates inoculum transport via water in the soil matrix
}
\details{
This function models inoculum movement in soil, considering flow direction
and altitude under wet and intermediate moisture conditions. It identifies
pixels where flow direction matches or is adjacent to the foci, then processes
connected pixels based on altitude differences. The result is a binary raster
showing the spatial pattern of inoculum dispersal, constrained by topography
and moisture.
}
\examples{
## load packages
library(sf)
library(terra)

## load data
dem_sr <- rast(system.file("spatial/dem_light.tiff", package = "phytorisk"))
poi_sf <- st_read(system.file("spatial/poi.geojson", package = "phytorisk"))

## simulate mechanism
mec_soilwater_sr <- mec_soilwater(dem_sr, poi_sf)
}
\references{
Ristaino, J., Gumpertz, M., 2000. New Frontiers in the Study of Dispersal and Spatial Analysis of Epidemics Caused by Species in the Genus Phytophthora. Annu. Rev. Phytopathol. 38, 541–576. \doi{10.1146/annurev.phyto.38.1.541}

Vannini, A., Natili, G., Anselmi, N., Montaghi, A., Vettraino, A.M., 2010. Distribution and gradient analysis of Ink disease in chestnut forests. For. Pathol. 40, 73–86. \doi{10.1111/j.1439-0329.2009.00609.x}

Vannini, A., Natili, G., Thomidis, T., Belli, C., Morales-Rodriguez, C., 2021. Anthropogenic and landscape features are associated with ink disease impact in Central Italy. For. Pathol. 51, e12722. \doi{10.1111/efp.12722}
}
