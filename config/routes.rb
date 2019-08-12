Rails.application.routes.draw do
  # teams & signups
  resources :teams, only: [:show, :index] do
      resources :signups, only: [:new]
  end
  get '/myteams' => 'teams#myindex'
  # users
  resources :users, only: [:new, :show, :edit]
  root 'users#welcome'
  # sessions
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/auth/facebook/callback' => 'sessions#createfb'

end
