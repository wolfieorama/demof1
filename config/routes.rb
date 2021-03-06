Rails.application.routes.draw do
  resources :predictions
  devise_for :users

  ActiveAdmin.routes(self)
  # static landing pages
  get '/pages/:page' => 'pages#show'

  root 'pages#show', page: 'home'
end
