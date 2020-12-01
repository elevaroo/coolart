Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'profile', to: 'pages#profile'
  # resources :category, only: [:index]
  # need to check everything we need as routes
  resources :artists, only: [ :show, :index ] do
    resources :artworks, except: [ :index ] do
      resources :orders, only: [:new, :create]
      resources :favorite_artworks, only: [:new, :create, :destroy]
    end
  end

  resources :artworks, only: [ :index ]

end
