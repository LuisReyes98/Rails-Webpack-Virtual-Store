import Rails from 'rails-ujs';
import Turbolinks from 'turbolinks';
import * as ActiveStorage from 'activestorage';

Rails.start();
Turbolinks.start();
ActiveStorage.start();

import TurbolinksAdapter from 'vue-turbolinks';
import Vue from 'vue/dist/vue.esm';

// Shared
import NavBarStore from '../src/shared/navbar.vue';
import HomeSideBar from '../src/shared/_sidebar.vue';

// Home
import Home from '../src/home.vue';

// Users
import SignIn from '../src/user/sign_in.vue';
import SignUp from '../src/user/sign_up.vue';

// Dashboard
import DashCreateProduct from '../src/dashboard/create_product.vue';
import DashOrders from '../src/dashboard/orders.vue';
import DashProducts from '../src/dashboard/products.vue';
import DashSideBar from '../src/dashboard/shared/side_bar.vue';


import '../assets/index.js';

Vue.use(TurbolinksAdapter);
//Shared
Vue.component('navbarstore', NavBarStore);
Vue.component('home_sidebar', HomeSideBar);
// Home
Vue.component('home', Home);
// User
Vue.component('signin', SignIn);
Vue.component('signup', SignUp);
// Dashboard
Vue.component('dshnewproduct', DashCreateProduct);
Vue.component('dshorders', DashOrders);
Vue.component('dshproducts', DashProducts);
Vue.component('dshsidebar', DashSideBar);

document.addEventListener('turbolinks:load', () => {
  const app = new Vue({
    el: '[data-behaviour="vue"]',
  });
});