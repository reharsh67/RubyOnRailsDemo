Rails.application.routes.draw do
  
  resources :users
  root "articles#home"
  resources :articles
  get 'signup', to: 'users#new'
  resources :users, expect: [:new]
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
