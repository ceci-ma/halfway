import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById("search_location_1");
  const addressInput2 = document.getElementById("search_location_2");
  if (addressInput || addressInput2) {
    places({ container: addressInput });
    places({ container: addressInput2 });
  }
};

export { initAutocomplete };

