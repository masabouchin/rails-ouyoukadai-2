Rails.application.routes.draw do
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update] do
  get :search, on: :collection
  resources :relationships, only: [:create, :destroy]
  get 'follows' => 'relationships#follower', as: 'follows'
  get 'followers' => 'relationships#followed', as: 'followers'
  end
  resources :books do
  resource :book_comments, only: [:create, :destroy]
  resource :favorites, only: [:create, :destroy]
  end
  root to: 'home#top'
  get 'home/about'
end
