import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';
import circle from '@turf/circle';
import * as turf from '@turf/turf';
const initMapbox = () => {
  const mapElement = document.getElementById('map');
const fitMapToMarkers = (map, markers, halfway) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 2000 });
};


  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });

    map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
                                        mapboxgl: mapboxgl }));
    const markers = JSON.parse(mapElement.dataset.markers);
    markers.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add thi
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(map);

    });

    var el = document.createElement('div');
    el.className = 'marker';
    let halfway = JSON.parse(mapElement.dataset.halfway);
    new mapboxgl.Marker(el)
       .setLngLat([halfway[1], halfway[0]])
       .addTo(map);

    map.on('load', (event) => {
      var center = [51.5119792, -0.1295635];
      var radius = 100;
      var options = {steps: 64, units: 'kilometers', properties: {}};
      var circle = turf.circle(center, radius, options);

      //addToMap
      var addToMap = [turf.point(center), circle];

      const circleHash = {
        "type": "Feature", //geoJson
        "data": {
          "type": "FeatureCollection",
          "features": [{
            "type": "Feature",
            "geometry": {
              "type": "Polygon",
              "coordinates": center
            }
          }]
        }
      }
      map.addSource("polygon", circleHash);

      map.addLayer({
          "id": "polygon",
          "type": "fill",
          "source": "polygon",
          "layout": {},
          "paint": {
              "fill-color": "blue",
              "fill-opacity": 0.6
          }
      });




    //   map.getSource('polygon').setData({
    //   type: 'FeatureCollection',
    //   features: [
    //     addToMap
    //   ]
    // });
    //   map.addLayer({
    //   id: 'polygon',
    //   type: 'circle',
    //   source: 'polygon',
    //   paint: {
    //     'circle-radius': 100,
    //     'circle-color': '#486DE0'
    //   }
    // });


      // var createGeoJSONCircle = function(center, radiusInKm, points) {
      //   if(!points) points = 64;
      //   let halfway = JSON.parse(mapElement.dataset.halfway);
      //   var coords = {
      //       latitude: halfway[1],
      //       longitude: halfway[0]
      //   };

      //   var km = radiusInKm;

      //   var ret = [];
      //   var distanceX = km/(111.320*Math.cos(coords.latitude*Math.PI/180));
      //   var distanceY = km/110.574;

      //   var theta, x, y;
      //   for(var i=0; i<points; i++) {
      //     theta = (i/points)*(2*Math.PI);
      //     x = distanceX*Math.cos(theta);
      //     y = distanceY*Math.sin(theta);

      //     ret.push([coords.longitude+x, coords.latitude+y]);
      //   }
      //   ret.push(ret[0]);

      //   return {
      //     "type": "geojson",
      //     "data": {
      //       "type": "FeatureCollection",
      //       "features": [{
      //         "type": "Feature",
      //         "geometry": {
      //           "type": "Polygon",
      //           "coordinates": ret
      //         }
      //       }]
      //     }
      //   };
      // };

      // map.addSource("polygon", createGeoJSONCircle([51.5119792, -0.1295635], 10));

      // map.addLayer({
      //   "id": "polygon",
      //   "type": "fill",
      //   "source": "polygon",
      //   "layout": {},
      //   "paint": {
      //     "fill-color": "blue",
      //     "fill-opacity": 0.6
      //   }
      // });
    //   map.addLayer({
    //     'id': 'polygon',
    //     'type': 'circle',
    //     "geometry": {
    //       "type": "Point",
    //       "coordinates": [51.5119792, -0.1295635]
    //     },
    //     'source': {
    //       type: 'vector',
    //       url: 'mapbox://mapbox.mapbox-streets-v8'
    //     },
    //     'source-layer': 'sf2010',
    //     'paint': {
    //       // make circles larger as the user zooms from z12 to z22
    //       'circle-radius': {
    //         'base': 1.75,
    //         'stops': [[12, 2], [22, 180]]
    //       },
    //     // color circles by ethnicity, using a match expression
    //     // https://docs.mapbox.com/mapbox-gl-js/style-spec/#expressions-match
    //       'circle-color': '#ff0000'
    //     }
    //   });
    });

    // map.getSource('polygon').setData(createGeoJSONCircle([51.5119792, -0.1295635], 1).data);





    fitMapToMarkers(map, markers, halfway);
  }
};

export { initMapbox };
