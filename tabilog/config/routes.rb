Rails.application.routes.draw do
  devise_for :users
  root 'matelpages#index'
  get 'matelpages/index' => 'matelpages#index'

  resources :matelpages do
  resources :comments, only: [:create]
  end
  resources :users, only: [:show]
end
