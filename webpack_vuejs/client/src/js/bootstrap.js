import Lodash from 'lodash';
import Axios from 'axios';
import jQuery from 'jquery';
import Vue from 'vue';

window._ = Lodash;
window.$ = window.jQuery = jQuery;
window.Vue = Vue;
window.axios = Axios;

// require('../../../node_modules/bootstrap/dist/js/bootstrap.js');
// require('../../../node_modules/bootstrap/dist/css/bootstrap.css');
// require('../../../node_modules/bootstrap/dist/css/bootstrap-theme.css');

require('../sass/app.scss');
require('../../../node_modules/materialize-css');

// require('../../../node_modules/leaflet/dist/leaflet.css');

// require('purecss');
