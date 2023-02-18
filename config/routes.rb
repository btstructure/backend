Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/user", to: "users#index"
  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  # Defines the root path route ("/")
  # root "articles#index"
end
