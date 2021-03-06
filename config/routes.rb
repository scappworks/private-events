Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :events
  resources :sessions

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  post "/invite", to: "enrollments#create"
  delete "/uninvite", to: "enrollments#destroy"

  root "events#index"
end
