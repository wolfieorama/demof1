Rails.application.routes.draw do
  # static landing pages
  get '/pages/:page' => 'pages#show'

  root 'pages#show', page: 'home'
end
