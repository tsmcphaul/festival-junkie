Rails.application.routes.draw do
  root 'static#home'

  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :comments
  resources :festivals
  resources :users, except: [:new]
end
