/* global $, LeafletWidget, L, Shiny, HTMLWidgets */

LeafletWidget.methods.addMapboxVectorTileLayer = function(url, layerId, group, options) {
  (function(){

    options.url = url;

    this.layerManager.addLayer(L.mapboxVectorTileLayer(options), "tile", layerId, group);

  }).call(this);
};
