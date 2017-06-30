Rails.application.routes.draw do
  resources :posts
  #defining the route
  get 'welcome/index'
  # sets the welcome controller index action to the route of our application
  root 'welcome#index'
end
