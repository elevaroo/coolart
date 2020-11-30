Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :artworks #show and index for everyone; edit add and delete only for an artist

  # resources :category, only: [:index]
end
