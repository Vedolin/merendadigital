import { Component, OnInit } from '@angular/core';

import { HomeService } from './home.service';

@Component({
  selector: 'home-component',
  templateUrl: './home.component.html',
  styleUrls: [ './home.component.css' ],
  providers: [ HomeService ],
})
export class HomeComponent implements OnInit {

  apiWelcomeMessage: any = null;

  constructor(private homeService: HomeService) {
    this.apiWelcomeMessage = homeService.getWelcomeMessage();
  }

  ngOnInit() {
      
  }

}
