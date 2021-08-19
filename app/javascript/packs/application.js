// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
import { initUpdateLogobarOnScroll } from '../components/logobar';
import { addIngredientBtn } from '../components/add_ingredient_to_form';
import { timeOutAlert } from '../components/time_out';
// import { displayIngredientUnit } from '../components/display_unit_in_form';
// import { ingredientQuantityChange } from '../components/ingredient_quantity';
import { displayGif } from '../components/displayGif';
document.addEventListener('turbolinks:load', () => {
  // Call your functions here

  initUpdateLogobarOnScroll();
  addIngredientBtn();
  timeOutAlert();
  // displayIngredientUnit()    --- commented because i cannot get the selected ingredient in the JS
  // ingredientQuantityChange() --- commented because we switched back to form submit
});
