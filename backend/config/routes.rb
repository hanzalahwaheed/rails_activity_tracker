Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  
  resource :users, only: [:create]
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
end
