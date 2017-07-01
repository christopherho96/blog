Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :projects
  resources :contacts, only: [:new, :create]
  #defining the route
  get 'welcome/index'
  # sets the welcome controller index action to the route of our application
  root 'welcome#index'
end
