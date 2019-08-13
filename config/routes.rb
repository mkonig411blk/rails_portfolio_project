Rails.application.routes.draw do
  # games
  resources :games
  # teams & signups
  resources :teams, only: [:show, :index] do
      resources :signups, only: [:new, :create]
      resources :games, only: [:new, :create, :show, :index]
  end
  get '/myteams' => 'teams#myindex'
  resources :signups, only: [:new, :create, :show, :index]
  delete '/leaveteam/:team_id' => 'signups#destroy'
  # users
  resources :users
  root 'users#welcome'
  # sessions
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/auth/facebook/callback' => 'sessions#createfb'

end
