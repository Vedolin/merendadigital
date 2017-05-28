import { NgModule } from '@angular/core';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';

import {
  MdButtonModule,
  MdCheckboxModule,
  MdMenuModule,
  MdCardModule,
  MdIconModule,
  MdIconRegistry
} from '@angular/material';

@NgModule({
  imports: [
    BrowserAnimationsModule,
    MdButtonModule,
    MdCheckboxModule,
    MdMenuModule,
    MdCardModule,
    MdIconModule
  ],
  exports: [
    BrowserAnimationsModule,
    MdButtonModule,
    MdCheckboxModule,
    MdMenuModule,
    MdCardModule,
    MdIconModule
  ],
  providers: [ MdIconRegistry ],
})
export class MaterialModule { }
