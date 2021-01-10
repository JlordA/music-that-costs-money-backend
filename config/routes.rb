Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
      resources :albums
      resources :users
      post '/login', to: 'auth#login' 
      resources :posts
  end

end
