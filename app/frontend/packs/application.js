import Rails from 'rails-ujs';
import Turbolinks from 'turbolinks';
import * as ActiveStorage from 'activestorage';

Rails.start();
Turbolinks.start();
ActiveStorage.start();

import TurbolinksAdapter from 'vue-turbolinks';
import Vue from 'vue/dist/vue.esm';

import NavBarStore from '../src/shared/navbar.vue';
import Home from '../src/home.vue';
import SignIn from '../src/user/sign_in.vue';
import SignUp from '../src/user/sign_up.vue';

import '../assets/index.js';

Vue.use(TurbolinksAdapter);

Vue.component('navbarstore', NavBarStore);
Vue.component('home', Home);
Vue.component('signin', SignIn);
Vue.component('signup', SignUp);

document.addEventListener('turbolinks:load', () => {
  const app = new Vue({
    el: '[data-behaviour="vue"]',
  })
})