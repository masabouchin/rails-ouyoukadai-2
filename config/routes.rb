Rails.application.routes.draw do
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books
  resource :book_comments, only: [:create]
  resource :favorites, only: [:create, :destroy]
  root to: 'home#top'
  get 'home/about'
end
