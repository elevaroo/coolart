Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # resources :category, only: [:index]
  resources :artists, only: [ :show, :index, ]
  resources :artworks #show and index for everyone; edit add and delete only for an artist (nested)
end
