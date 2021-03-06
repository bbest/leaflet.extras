% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MapboxVectorTile.R
\name{addMapboxVectorTileLayer}
\alias{addMapboxVectorTileLayer}
\title{Add Mapbox Vector Tile Layer}
\usage{
addMapboxVectorTileLayer(map, url, tms = T, layerId = NULL, group = NULL,
  ...)
}
\arguments{
\item{map}{The Map widget}

\item{url}{eg http://base_url/tms/1.0.0/tileset/{z}/{x}/{y}.png}

\item{tms}{tiled map service defaults to true, eg if URL otherwise uses {-y} http://base_url/tms/1.0.0/tileset/{z}/{x}/{-y}.png}

\item{layerId}{String. An optional unique ID for the layer}

\item{group}{String. An optional group name for the layer}

\item{...}{Optional Parameters used by Leaflet.MapboxVectorTile described at \url{https://github.com/SpatialServer/Leaflet.MapboxVectorTile/blob/master/docs/configuration.md}}
}
\description{
Add Mapbox Vector Tile Layer
}
