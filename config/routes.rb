Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :artworks, only: [:index, :show, :create, :update, :destroy]
      resources :galleries, only: [:index, :show, :create, :update, :destroy]
      resources :users, only: [:index, :show, :create]
      post '/login', to: 'users#login'
    end
  end

end
