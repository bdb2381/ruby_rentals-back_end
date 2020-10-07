Rails.application.routes.draw do
  resources :items
  resources :inventories
  resources :reservations
  resources :receipts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
