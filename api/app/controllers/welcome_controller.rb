class WelcomeController < ApplicationController
  def index
    render json: {
      :content => {
        :app_name =>  'Merenda Digital API',
        :message => 'Seja bem-vindo a nossa API pública'
      }
    }
  end
end
