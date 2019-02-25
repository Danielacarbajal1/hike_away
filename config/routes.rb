Rails.application.routes.draw do
  get 'favourites/create'
  get 'favourites/destroy'
  get 'hikes/index'
  get 'hikes/show'
  get 'reviews/new'
  get 'reviews/create'
  get 'reviews/index'
  get 'reviews/show'
  get 'reviews/update'
  get 'reviews/edit'
  get 'reviews/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :hikes, only: [:index, :show] do
    resources :reviews, only: [:new, :index, :create, :edit, :update, :show, :destroy]
  end
  resources :favorites, only: [ :create, :delete]
end
