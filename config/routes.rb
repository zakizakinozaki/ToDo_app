Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#index'

  resources :home, only: :index

  resources :lists do
    resources :cards
  end

  post 'outputs/attach', to: 'outputs#attach'
  resources :outputs
end
