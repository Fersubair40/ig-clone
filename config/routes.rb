Rails.application.routes.draw do
  get 'search' => 'search#index'
  devise_for :users
  get 'home/index'


  root to: 'users#sign_up'

  resources :users, only: [:show, :edit, :update]
  resources :posts, only: [:new, :create, :show, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
