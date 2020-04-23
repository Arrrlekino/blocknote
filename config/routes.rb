Rails.application.routes.draw do
 #not work for users ;-(
 #devise_for :users
 #get '/users/:id'
 resources :users
  root to: "home#index"
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :todos
end
