Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "user#index"
  get "/user", to: "user#index"
  post "/user", to: "user#create"

  get "/question", to: "question#index"
  post "/question", to: "question#create"
end
