Rails.application.routes.draw do
  resources :cards
  resources :decks
  resources :users do 
    resources :decks 
  end
  # get '/user_decks', to: "decks#userDecks"
  post '/login', to: 'auth#create'
  delete '/logout', to: 'auth#destroy'
  get '/logged_in', to: 'application#logged_in?'
end
