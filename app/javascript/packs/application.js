// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual plication logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.


import Rails from "@rails/ujs"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
ActiveStorage.start()

console.log("this is working" + window.location);
