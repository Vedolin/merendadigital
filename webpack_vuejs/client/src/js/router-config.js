import Home from './pages/Home.vue';
import About from './pages/About.vue';
import Map from './pages/Map.vue';

export const routes = [
  { path: '/', component: Home },
  { path: '/about', component: About },
  { path: '/map', component: Map },
  // { path: '/map/:lat/:lon', component: Map },
];
