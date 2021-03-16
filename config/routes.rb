Rails.application.routes.draw do
  resources :tweets
  resources :users
  resources :comments
end
