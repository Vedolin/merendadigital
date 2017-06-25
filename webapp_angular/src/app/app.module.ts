import 'hammerjs';
import 'materialize-css';
import * as $ from 'jquery';

import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';

// import { MaterialDesignModule } from './material-design/material-design.module';
import { MaterializeModule } from 'angular2-materialize';

import { routing } from './app.routing';
import { AppComponent } from './app.component';

// import { HomeComponent } from './home/home.component';
import { AboutComponent } from './about/about.component';

import { HomeModule } from './home/home.module';
import { HomeService } from './home/home.service';
import { StatisticsComponent } from './statistics/statistics.component';

@NgModule({
  declarations: [
    AppComponent,

    // HomeComponent,
    AboutComponent,

    StatisticsComponent,
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpModule,

    // MaterialDesignModule,
    MaterializeModule,

    routing,

    HomeModule
  ],
  providers: [ HomeService ],
  bootstrap: [ AppComponent ],
})
export class AppModule { }
