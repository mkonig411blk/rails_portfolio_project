Rails.application.routes.draw do
  resources :signups
  resources :teams
  resources :users
  root 'users#welcome'
  # get '/signin' => 'users#signin', as: :signin
  # post '/login' => 'users#login', as: :login
  # get '/logout' => 'users#logout', as: :logout
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/auth/facebook/callback' => 'sessions#createfb'
end
