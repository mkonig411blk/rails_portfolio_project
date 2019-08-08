Rails.application.routes.draw do
  resources :users
  root 'users#welcome'
  get '/signin' => 'users#signin', as: :signin
  post '/login' => 'users#login', as: :login
  get '/logout' => 'users#logout', as: :logout
end
