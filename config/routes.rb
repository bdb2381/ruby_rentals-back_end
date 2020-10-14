Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :items
      resources :inventories
      resources :reservations
      resources :receipts
      resources :users

      post '/login', to: 'auth#create'
      # get '/current_user', to: 'users#profile'
      
      get '/reauth', to: 'auth#reauth'

    end
  end
end
