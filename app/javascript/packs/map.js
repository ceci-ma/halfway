import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';
import MapboxCircle from 'mapbox-gl-circle';

const mapTrigger = (map) => {

  const btns = document.querySelectorAll(".mapTrigger");
  btns.forEach((btn) => {
    const coord = JSON.parse(btn.dataset.coordinates)
    console.log(coord)
    btn.addEventListener("click", (event) => {
      map.flyTo({
        center: coord,
        zoom: 17
      });
    })
  })
}

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

    mapTrigger(map);

    if (window.location.href.includes('favourites')  || window.location.href.includes('venues')) {
        map.addControl(new mapboxgl.GeolocateControl({
        positionOptions: {
          enableHighAccuracy: true
        },
        trackUserLocation: true
      }))
    } else {
      const geolocate = new mapboxgl.GeolocateControl();
      map.addControl(geolocate);
      window.addEventListener("load", (event) => {
        geolocate.trigger();
      })
    };

    const markers = JSON.parse(mapElement.dataset.markers);
    if (markers) {
      var el = document.createElement('div');
      el.className = 'marker';
      markers.forEach((marker) => {
        const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add thi
        new mapboxgl.Marker()
          .setLngLat([ marker.lng, marker.lat ])
          .setPopup(popup)
          .addTo(map);
        // marker.addEventListener("click", (event) => {
        //   map.flyTo({
        //     center: marker.geometry.coordinates,
        //     zoom: 15
        //   });
        // })
      });
    };





    let point = mapElement.dataset.halfway
    if (point) {
      let halfway = JSON.parse(point);
      var circle = new MapboxCircle({lat: halfway[0], lng: halfway[1]}, 500, {
        editable: false,
        minRadius: 50,
        fillColor: '#ED1C24'
      }).addTo(map)
      fitMapToMarkers(map, markers)
    };
  }
};



export { initMapbox };
