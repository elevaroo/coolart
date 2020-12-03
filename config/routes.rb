Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'profile', to: 'pages#profile'
  get '/orders/:id/mark_as_shipped',  to: 'orders#mark_as_shipped', as: 'mark_as_shipped'
  # resources :category, only: [:index]
  # need to check everything we need as routes

  # add param :name for renaming the path #param: :username

  resources :categories, only: :show, param: :name

  resources :artists, only: [ :show, :index ] do
    resources :artworks, except: [ :index ]
  end

  resources :orders, only: [:new, :create]
  resources :favorite_artworks, only: [:new, :create, :destroy]
  resources :artworks, only: [ :index ]


end
