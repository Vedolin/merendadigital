Rails.application.routes.draw do
  resources :meals
  resources :contracts
  resources :audiences
  resources :dishes
  resources :ingredients
  resources :preparations
  resources :presentations
  resources :groups
  resources :citizen_rates
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
