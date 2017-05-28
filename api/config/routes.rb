Rails.application.routes.draw do

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end

  # Graphql Routes
  get "/graphql", to: "graphql#execute"
  post "/graphql", to: "graphql#execute"

  get '/movies', to: 'movies#query'
  
  get 'welcome/index'

  # Root Route
  root 'welcome#index'

end
