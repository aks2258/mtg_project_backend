Rails.application.routes.draw do
  resources :cards
  resources :decks
  resources :users
  get "/user_decks", to: "users#user_decks"
  post '/login', to: 'auth#create'
  delete '/logout', to: 'auth#destroy'
  get '/logged_in', to: 'application#logged_in?'
end
