Rails.application.routes.draw do
  get 'welcome/index'

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end

  # Graphql Routes
  get "/graphql", to: "graphql#execute"
  post "/graphql", to: "graphql#execute"

  resources :ues
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

  # API welcome message
  get 'welcome', to: 'welcome#index'
  root 'welcome#index'
end
