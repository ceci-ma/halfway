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
        zoom: 16
      });
      const venueId = event.currentTarget.dataset.venue;
      const marker = document.getElementById(venueId);
      const child_card = event.currentTarget.parentNode;
      const card = child_card.parentNode
      // const card = document.getElementById(cardId);

      // const cards = document.querySelectorAll(".card-product");
      if (marker) {
        document.querySelectorAll('.marker').forEach(marker => marker.classList.remove('color-selected'));
        marker.classList.add('color-selected');
        // card.add('card-clicked')

        document.querySelectorAll('.card-product').forEach(card => card.classList.remove('card-clicked'));
        card.classList.add('card-clicked');
      }
    })
  })
}

const initMapbox = () => {
  const mapElement = document.getElementById('map');
  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    if (markers) {
      markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
        map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 2000 });
      };
    }



  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mdaguilar/ck3iscan008e81cm57nsuggun'
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
      markers.forEach((marker) => {
        const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add thi
        const el = document.createElement('div');
        el.className = 'marker';
        el.id = marker.id
        el.innerHTML = '<i class="fas fa-map-marker-alt"></i>'

        new mapboxgl.Marker(el)
          .setLngLat([ marker.lng, marker.lat ])
          .setPopup(popup)
          .addTo(map);
      });
    };


    // geolocate.addEventListener('geolocate', (event) => {
    // const userlocation = geolocate._lastKnownPosition;
    // const lat = userlocation.coords.latitude;
    // const lng = userlocation.coords.longitude;
    // });

    // Crashing my code >> TO REVIEW <<
    // let halfway = JSON.parse(mapElement.dataset.halfway);
    // var circle = new MapboxCircle({lat: halfway[0], lng: halfway[1]}, 500, {
    //   editable: false,
    //   minRadius: 50,
    //   fillColor: '#ED1C24'
    // }).addTo(map)
    fitMapToMarkers(map, markers);



    let point = mapElement.dataset.halfway
    if (point) {
      let halfway = JSON.parse(point);
      if (halfway) {
        var circle = new MapboxCircle({lat: halfway[0], lng: halfway[1]}, 500, {
          editable: false,
          minRadius: 50,
          fillColor: '#F9BBC4'
        }).addTo(map)
        fitMapToMarkers(map, markers)
      }
    };
  }
};



export { initMapbox };
