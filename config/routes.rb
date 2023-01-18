Rails.application.routes.draw do
  
  resources :users
  root "articles#home"
  resources :articles
  get 'signup', to: 'users#new'
  resources :users, expect: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to:'sessions#create'
  delete 'logout', to:'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
