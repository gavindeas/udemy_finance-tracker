Rails.application.routes.draw do
  devise_for :users
  resources :user_stocks, only: [:create, :destroy]
  resources :friendships, only: [:create, :destroy]
  resources :users, only: [:show]
  root 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'my_friends', to: 'users#my_friends'
  get 'search_stock', to: 'stocks#search'
  get 'search_friends', to: 'users#search'
end
