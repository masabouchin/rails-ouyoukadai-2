Rails.application.routes.draw do
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :relationships, only: [:create, :destroy]
  resources :books do
  resource :book_comments, only: [:create, :destroy]
  resource :favorites, only: [:create, :destroy]
  end
  root to: 'home#top'
  get 'home/about'
end
