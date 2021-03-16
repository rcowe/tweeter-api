Rails.application.routes.draw do
  root 'welcome#index'
  resources :tweets
  resources :users
  resources :comments
end
