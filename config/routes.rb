Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'

  get '/about' => 'pages#about', as: 'about'


  resources :autos, only: [:show, :new, :create] do
    resources :contracts, only: [:index, :show]
  end

  resources :accident_contracts, only: [:new, :create]
  resources :health_requests, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
