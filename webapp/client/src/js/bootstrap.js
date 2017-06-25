import Lodash from 'lodash';
import Axios from 'axios';
import jQuery from 'jquery';
import Vue from 'vue';

window._ = Lodash;
window.$ = window.jQuery = jQuery;
window.Vue = Vue;
window.axios = Axios;
window.Tether = require('tether');

require('../sass/app.scss');
require('bootstrap');
require('../../../node_modules/material-design-lite/material.min.css');
require('../../../node_modules/material-design-lite/material.min.js');

require('../../../node_modules/jquery-ui/ui/widgets/autocomplete.js');
require('../../../node_modules/jquery-ui/ui/widgets/datepicker.js');
