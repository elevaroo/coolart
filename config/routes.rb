Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'profile', to: 'pages#profile'
  get '/orders/:id/mark_as_shipped',  to: 'orders#mark_as_shipped', as: 'mark_as_shipped'
  post '/favorite_artworks/:id',  to: 'favorite_artworks#like_unlike', as: 'like_unlike'

  # resources :category, only: [:index]
  # need to check everything we need as routes

  # add param :name for renaming the path #param: :username

  resources :categories, only: :show, param: :name

  resources :artists, only: [ :show, :index ] do
    resources :artworks, except: [ :index ]
  end

  resources :orders, only: [:create, :show] do
    resources :payments, only: :new
  end
  resources :favorite_artworks, only: [:new, :create, :destroy]
  resources :artworks, only: [ :index ]


end
