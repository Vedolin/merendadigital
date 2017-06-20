import { Component } from '@angular/core';

import { MaterializeAction, MaterializeModule } from 'angular2-materialize';

import 'hammerjs';
import 'materialize-css';
import * as $ from 'jquery';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title: string;

  constructor() {
    this.title = 'Alimentação Escolar - SME';
  }

  ngOnInit() {
    $(".dropdown-button").dropdown();
  }
}
