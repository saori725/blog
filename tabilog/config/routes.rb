Rails.application.routes.draw do
  get 'likes/create'
  get 'likes/destroy'

  devise_for :users
  root 'matelpages#index'
  get 'matelpages/map' => 'matelpages#map'


  resources :likes, only: [:create, :destroy]
  resources :matelpages do
  resources :comments, only: [:create, :new]
  end
  resources :users, only: [:show]
end
