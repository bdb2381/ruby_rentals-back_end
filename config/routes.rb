Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :items
      resources :inventories
      resources :reservations
      resources :receipts
      resources :users
    end
  end
end
