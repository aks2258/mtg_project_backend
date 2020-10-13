Rails.application.routes.draw do
  resources :cards
  resources :decks
  resources :users, only: [:create]
  post '/login', to: 'auth#create'
  delete '/logout', to: 'auth#destroy'
  get '/logged_in', to: 'application#logged_in?'
end
