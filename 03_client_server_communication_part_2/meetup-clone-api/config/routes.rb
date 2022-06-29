Rails.application.routes.draw do
  resources :rsvps, only: [:create]
  resources :memberships, only: [:create]
  resources :events, only: [:create]
  resources :groups, only: [:index, :show, :create]
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
