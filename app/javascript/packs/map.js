import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';
import MapboxCircle from 'mapbox-gl-circle';
const initMapbox = () => {
  const mapElement = document.getElementById('map');
  const fitMapToMarkers = (map, markers) => {
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
    var el = document.createElement('div');
    el.className = 'marker';
    markers.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add thi
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(map);
    });

    let halfway = JSON.parse(mapElement.dataset.halfway);
    var circle = new MapboxCircle({lat: halfway[0], lng: halfway[1]}, 500, {
      editable: false,
      minRadius: 50,
      fillColor: '#ED1C24'
    }).addTo(map)
    fitMapToMarkers(map, markers);
  }
};

export { initMapbox };
