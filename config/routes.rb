Rails.application.routes.draw do
  resources :signups
  resources :teams
  resources :users
  root 'users#welcome'
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/auth/facebook/callback' => 'sessions#createfb'

  get '/myteams' => 'teams#myindex'
end
