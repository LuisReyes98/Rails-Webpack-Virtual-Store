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
import HomePageCart from '../src/cart.vue';

// Users
import SignIn from '../src/user/sign_in.vue';
import SignUp from '../src/user/sign_up.vue';

// Dashboard
import DashCreateProduct from '../src/dashboard/products/create_product.vue';
import DashProducts from '../src/dashboard/products/products.vue';


import DashOrders from '../src/dashboard/orders.vue';
import DashSideBar from '../src/dashboard/shared/side_bar.vue';
import DashboardUsers from '../src/dashboard/users.vue';
import DashboarReports from '../src/dashboard/reports.vue';


import '../assets/index.js';

Vue.use(TurbolinksAdapter);
//Shared
Vue.component('navbarstore', NavBarStore);
Vue.component('home_sidebar', HomeSideBar);
// Home
Vue.component('home', Home);
Vue.component('home_page_cart', HomePageCart);


// User
Vue.component('signin', SignIn);
Vue.component('signup', SignUp);

// Dashboard
Vue.component('dashboard_new_product', DashCreateProduct);
Vue.component('dshorders', DashOrders);
Vue.component('dashboard_products', DashProducts);
Vue.component('dshsidebar', DashSideBar);


Vue.component('dashboard_users', DashboardUsers);
Vue.component('dashboard_reports', DashboarReports);


document.addEventListener('turbolinks:load', () => {
  const app = new Vue({
    el: '[data-behaviour="vue"]',
  });
});