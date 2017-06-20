require('./bootstrap');

import VueRouter from 'vue-router';

import App from './App.vue';
import { routes } from './router-config';

// Install Vue Router
Vue.use(VueRouter);

const router = new VueRouter({
  routes,
  mode: 'history'
});

// Registering Vue Components
Vue.component('example', require('./components/Example.vue'));

// Creating a Vue instance
const app = new Vue({
  el: '#app',
  router,
  render: h => h(App)
});
