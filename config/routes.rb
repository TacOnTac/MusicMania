Rails.application.routes.draw do
  resources :playlists
  resources :albums
  resources :artists
  resources :genres
  resources :songs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Change Default Home Page to songs
  root to: "songs#index"

end
