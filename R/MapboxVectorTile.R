mvtLayerDependencies <- function() {
  list(
    htmltools::htmlDependency(
      "Leaflet.MapboxVectorTile", "0.1.7",
      system.file("htmlwidgets/lib/MapboxVectorTile", package = "leaflet.extras"),
      #src = file.path(getwd(), 'js'),
      script = c('Leaflet.MapboxVectorTile.js','MapboxVectorTile-bindings.js')
    ))
}

#' Add Mapbox Vector Tile Layer
#'
#' @param map The Map widget
#' @param layerId String. An optional unique ID for the layer
#' @param group String. An optional group name for the layer
#' @param url eg http://base_url/tms/1.0.0/tileset/{z}/{x}/{y}.png
#' @param tms tiled map service defaults to true, eg if URL otherwise uses {-y} http://base_url/tms/1.0.0/tileset/{z}/{x}/{-y}.png
#' @param ... Optional Parameters used by Leaflet.MapboxVectorTile described at \url{https://github.com/SpatialServer/Leaflet.MapboxVectorTile/blob/master/docs/configuration.md}
#'
#' @export
addMapboxVectorTileLayer <- function(
  map,
  url,
  layerId = NULL,
  group = NULL,
  options = tileOptions(tms=T)) {

  if(is.null(url))
    stop("Mapbox Vector Tile Layer requires a URL")

  #browser()
  map$dependencies <- c(map$dependencies, mvtLayerDependencies())

  invokeMethod(map, getMapData(map), 'addMapboxVectorTileLayer', url, layerId, group, options)
}
