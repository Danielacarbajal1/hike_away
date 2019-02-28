Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: 'pages#home'
  resources :hikes, only: [:index, :show] do
    resources :reviews, only: [:new, :index, :create, :edit, :update, :show, :destroy]
  end
  resources :favorites, only: [ :create, :delete]
  resources :pages
end
