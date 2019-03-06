Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: 'pages#home'
  resources :hikes, only: [:index, :show] do
  resources :favourites, only: [:create, :delete, :show]
    resources :reviews, only: [:new, :index, :create, :edit, :update, :show, :destroy]
  resources :pictures, only: [:create]
  end
  resources :pictures, only: [:destroy]
  resources :pages
end
