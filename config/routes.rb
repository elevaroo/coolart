Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # resources :category, only: [:index]
  # need to check everything we need as routes
  resources :artists, only: [ :show, :index, ]
  resources :artworks do  #show and index for everyone; edit add and delete only for an artist (nested)
    resources :orders, only: [:new, :create]
    resources :favorite_artworks, only: [:new, :create, :delete]
  end

  resources :favorite_artworks, only: [:show]

end
