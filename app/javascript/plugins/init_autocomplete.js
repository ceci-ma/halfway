import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('venue_location_1');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
initAutocomplete()
