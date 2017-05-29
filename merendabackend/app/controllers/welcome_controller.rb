class WelcomeController < ApplicationController
  def index
    @welcome = {
      :welcome => {
        :api_name => 'API Merenda Digital',
        :message => 'Olá bem-vindo a nossa API!',
        :team => [
          'Ivanildo',
          'Henrique',
          'Vedolin'
        ],
        :license => 'https://opensource.org/licenses/GPL-3.0'
      }
    }

    render json: @welcome
  end
end
