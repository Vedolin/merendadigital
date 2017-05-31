import 'hammerjs';

import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';

import { MaterialDesignModule } from './material-design/material-design.module';

import { routing } from './app.routing';
import { AppComponent } from './app.component';

// import { HomeComponent } from './home/home.component';
import { AboutComponent } from './about/about.component';

import { HomeModule } from './home/home.module';
import { HomeService } from './home/home.service';

@NgModule({
  declarations: [
    AppComponent,

    // HomeComponent,
    AboutComponent,
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpModule,

    MaterialDesignModule,

    routing,

    HomeModule
  ],
  providers: [ HomeService ],
  bootstrap: [ AppComponent ],
})
export class AppModule { }
