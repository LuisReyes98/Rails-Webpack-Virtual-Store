/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

// console.log('Hello World from Webpacker')
import Rails from 'rails-ujs';
import Turbolinks from 'turbolinks';
import * as ActiveStorage from 'activestorage';
Rails.start();
Turbolinks.start();
ActiveStorage.start();

import TurbolinksAdapter from 'vue-turbolinks'
import Vue from 'vue/dist/vue.esm'
import App from '../src/app.vue'
import Hi from '../src/hello.vue'

import '../application/stylesheets/index.js';
import '../application/images/index.js';
import '../application/fonts/index.js';
import '../application/javascripts/index.js';

Vue.use(TurbolinksAdapter)

Vue.component('app', App)
Vue.component('hi',Hi)

document.addEventListener('turbolinks:load', () => {
  const app = new Vue({
    el: '[data-behaviour="vue"]',
  })
})