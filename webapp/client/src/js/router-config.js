import Home from './pages/Home.vue';
import About from './pages/About.vue';
import School from './pages/School.vue';
import School0 from './pages/School0.vue';


export const routes = [
  { path: '/', component: Home },
  { path: '/about', component: About },
  { path: '/school', component: School },
  { path: '/school/comments', component: School0 },
];
