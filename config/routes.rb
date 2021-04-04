Rails.application.routes.draw do
  devise_for :users
  root to: 'lists#index'

  resources :lists do
    resources :cards
  end

  resources :outputs
end
