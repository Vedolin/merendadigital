import { Injectable } from '@angular/core';

@Injectable()
export class HomeService {

  constructor() { }

  getWelcomeMessage() {
    return {
      welcome: {
        api_name: 'API Merenda Digital',
        message: 'Olá bem-vindo a nossa API!',
        team: [
          'Henrique',
          'Ivanildo',
          'Vedolin'
        ],
        license: 'https://opensource.org/licenses/GPL-3.0'
      }
    };
  }

}
