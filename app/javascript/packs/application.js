/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb


import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { initMapbox } from './map';

import { list_toggle } from './list_toggle'
import { show_list_toggle } from './list_toggle'
import { initAutocomplete } from './../plugins/init_autocomplete';
import { clipboard_to_share } from './clipboard_to_share'
import { cat_button_click } from './category_button'


initMapbox();
list_toggle();
show_list_toggle();
initAutocomplete();
clipboard_to_share();
cat_button_click();


// To be potentially added to improve load time
// fetch('/venues/all_venues')
//   .then(response => response.json())
//   .then((data) => {
//     console.log(data);
//   })
