Rails.application.routes.draw do


  # resources :users, only: [:index, :show, :create]
  # # post '/login', to: 'users#login'
  # post 'user_token' => 'user_token#create'


  # Home controller routes.
  root   'home#index'
  get    'auth'            => 'home#auth'

  # Get login token from Knock
  post   'user_token'      => 'user_token#create'

  # User actions
  get    '/users/current'  => 'users#current'
  post   '/users/create'   => 'users#create'

  resources :users, only: [:index, :update, :destroy] do
    resources :artworks, only: [:index, :show, :create, :update, :destroy]
    resources :galleries, only: [:index, :show, :create, :update, :destroy]
    resources :scenes, only: [:index, :show, :create, :update, :destroy]
  end

end
